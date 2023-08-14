//
//  RootView.swift
//  Tradly
//
//  Created by KyawSawThu on 8/11/23.
//

import SwiftUI

struct RootView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var appState: AppState
    private let tabs: [Tab] = Tab.allCases
    @State private var selectedTab: Int = 0
    // MARK: - COMPONENTS
    // MARK: - BODY
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem {
                        TabItemView(data: tabs[0].item, isActive: $selectedTab.onSelected(0))
                    }
                    .tag(0)
                BrowseView()
                    .tabItem {
                        TabItemView(data: tabs[1].item, isActive: $selectedTab.onSelected(1))
                    }
                    .tag(1)
                StoreView()
                    .tabItem {
                        TabItemView(data: tabs[2].item, isActive: $selectedTab.onSelected(2))
                    }
                    .tag(2)
                OrderView()
                    .tabItem {
                        TabItemView(data: tabs[3].item, isActive: $selectedTab.onSelected(3))
                    }
                    .tag(3)
                ProfileView()
                    .tabItem {
                        TabItemView(data: tabs[4].item, isActive: $selectedTab.onSelected(4))
                    }
                    .tag(4)
            }
            .accentColor(.colorGreen)
        }
        .onReceive(appState.$sceneState, perform: { state in
            if state == .root {
                selectedTab = 0
            }
        })
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

struct TabItemView: View {
    var data: TabItemData
    @Binding var isActive: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Image(data.icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 12, height: 12)
                .foregroundColor(isActive ? .red : .colorGrey)
            Text(data.title)
                .foregroundColor(isActive ? .red : .colorGrey)
        } //: VSTACK
    }
}

extension Binding where Value == Int {
    func onSelected(_ index: Int) -> Binding<Bool> {
        return Binding<Bool>(
            get: {
                self.wrappedValue == index
            }, set: { _ in
                self.wrappedValue = index
            }
        )
    }
}

enum Tab: CaseIterable {
    case home
    case browse
    case store
    case order
    case profile
    
    var item: TabItemData {
        switch self {
        case .home: return .init(icon: "tab.home", title: "Home")
        case .browse: return .init(icon: "tab.search", title: "Browse")
        case .store: return .init(icon: "tab.store", title: "Store")
        case .order: return .init(icon: "tab.order", title: "Order")
        case .profile: return .init(icon: "tab.profile", title: "Profile")
        }
    }
}

struct TabItemData {
    let icon: String
    let title: String
}
