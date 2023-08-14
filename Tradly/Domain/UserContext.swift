//
//  UserContext.swift
//  Tradly
//
//  Created by KyawSawThu on 8/14/23.
//

import SwiftUI

class UserContext {
    @AppStorage("isAuthed")
    static var isAuthed: Bool = false
    
    @AppStorage("isOnboarded")
    static var isOnboarded: Bool = false
    
    @AppStorage("isStoreCreated")
    static var isStoreCreated: Bool = false
}
