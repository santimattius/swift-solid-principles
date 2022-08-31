//
//  Started.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 31/8/22.
//

import Foundation

class Monitor{}
class StandardKeyboard{}

class Windows98Machine {
    //This is problem, example change keyboard for Mechanical Keyboard
    private let keyboard = StandardKeyboard()
    private let monitor = Monitor()
}
