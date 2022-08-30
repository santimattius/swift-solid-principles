//
//  Finished.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation

protocol Vehicle4 {
    func draw() -> String
}

final class Car: Vehicle4 {
    func draw() -> String{
        return "I'm Car"
    }
}

final class Motorbike: Vehicle4 {
    func draw() -> String {
        return "I'm Motorbike"
    }
}

func draw2(vehicle: Vehicle4){
    print(vehicle.draw())
}

