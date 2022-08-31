//
//  Finished.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 31/8/22.
//

import Foundation

protocol Monitor1 {}

class LedMonitor : Monitor1 {}
class LcdMonitor : Monitor1 {}

protocol KeyBoard {}
class StandardKeyboard1 : KeyBoard {}
class MechanicalKeyboard : KeyBoard {}

class Windows98Machine1{
    private let keyboard: KeyBoard
    private let monitor: Monitor1
    
    init(keyboard: KeyBoard, monitor: Monitor1) {
        self.keyboard = keyboard
        self.monitor = monitor
    }
}
