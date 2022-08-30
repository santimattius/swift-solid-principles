//
//  Started.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation


struct Vehicle1 {
    let wheelCount: Int
    let maxSpeed: Int
    
    func show() {
        print("""
        wheelCount: \(wheelCount)
        maxSpeed: \(maxSpeed)
        """)
    }
}
