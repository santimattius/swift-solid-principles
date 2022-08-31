//
//  Started.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 31/8/22.
//

import Foundation


protocol AutenticationProvider {
    
    func isAutenticated() -> Bool
    
    func getAccessToken() -> String?
    
    func launch2FA() throws -> Bool
}

final class UserAndPassword: AutenticationProvider {
    
    func isAutenticated() -> Bool {
        return true
    }
    
    func getAccessToken() -> String? {
        return nil
    }
    
    func launch2FA() throws -> Bool {
        throw UnSupportError(message: "operation no supported")
    }
    
}

final class AppleProvider: AutenticationProvider {
    
    func isAutenticated() -> Bool {
        return true
    }
    
    func getAccessToken() -> String? {
        return nil
    }
    
    func launch2FA() throws -> Bool {
        return true
    }
    
}

struct UnSupportError: Error {
    let message: String
    
    init(message: String) {
        self.message = message
    }
}
