//
//  Finished.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 31/8/22.
//

import Foundation

protocol AutenticationProvider1 {
    
    func isAutenticated() -> Bool
    
    func getAccessToken() -> String?
    
}

protocol TwoFactorProvider {
    func launch2FA() -> Bool
}

final class UserAndPassword1: AutenticationProvider1 {
    
    func isAutenticated() -> Bool {
        return true
    }
    
    func getAccessToken() -> String? {
        return nil
    }
}

final class AppleProvider1: AutenticationProvider1, TwoFactorProvider {
    
    func isAutenticated() -> Bool {
        return true
    }
    
    func getAccessToken() -> String? {
        return nil
    }
    
    func launch2FA() -> Bool {
        return true
    }
    
}
