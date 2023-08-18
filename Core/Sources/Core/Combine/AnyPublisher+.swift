import Combine

public struct AnyObserver<Output, Failure: Error> {
    public let onNext: ((Output) -> Void)
    public let onError: ((Failure) -> Void)
    public let onComplete: (() -> Void)
}

public struct Disposable {
    public let dispose: () -> Void
    
    public init(dispose: @escaping () -> Void) {
        self.dispose = dispose
    }
}

public extension AnyPublisher {
    static func create(subscribe: @escaping (AnyObserver<Output, Failure>) -> Disposable) -> Self {
        let subject = PassthroughSubject<Output, Failure>()
        var disposable: Disposable?
        return subject
            .handleEvents(receiveSubscription: { subscription in
                disposable = subscribe(AnyObserver(
                    onNext: { output in subject.send(output) },
                    onError: { failure in subject.send(completion: .failure(failure)) },
                    onComplete: { subject.send(completion: .finished) }
                ))
            }, receiveCancel: { disposable?.dispose() })
            .eraseToAnyPublisher()
    }
}

public extension AnyPublisher {
    func async() async throws -> Output {
        try await withCheckedThrowingContinuation({ continuation in
            var cancellable: AnyCancellable?
            cancellable = first()
                .sink { result in
                    switch result {
                    case .finished:
                        break
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                    
                    cancellable?.cancel()
                } receiveValue: { value in
                    continuation.resume(with: .success(value))
                }
        })
    }
}
