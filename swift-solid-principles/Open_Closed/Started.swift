//
//  Started.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation

struct Vehicle3 {
   let type: VehicleType1
}

enum VehicleType1 {
    case car
    case motorbike
}

func draw(vehicle: Vehicle3) {
    switch vehicle.type {
    case .car:
        drawCar(vehicle: vehicle)
    case .motorbike:
        drawMotorBike(vehicle: vehicle)
    }
}

func drawMotorBike(vehicle: Vehicle1) {
    print(vehicle.type)
}

func drawCar(vehicle: Vehicle1) {
    print(vehicle.type)
}
