//
//  LoginViewModel.swift
//  Tradly
//
//  Created by KyawSawThu on 8/15/23.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {

    @Published var mobile: String = ""
    @Published var password: String = ""
    
    func login() {
        print(mobile, password)
    }
}
