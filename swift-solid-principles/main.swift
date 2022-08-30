//
//  main.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation


print("single_responsiblity_principle")

//without SRP
let vh1 = Vehicle1(wheelCount: 1, maxSpeed: 2)
vh1.show()

//with SRP
let vh2 = Vehicle2(wheelCount: 1, maxSpeed: 2)

let printer = VehiclePrinter()
printer.show(vh: vh2)

print("open_close_principle")

// without OCP
let vh3 = Vehicle3(type: VehicleType1.car)
draw(vehicle: vh3)

//with OCP
let car = Car()
draw2(vehicle: Car)

let motorbike = Motorbike()
draw2(vehicle: motorbike)

print("liskov_substitution_principle")

let cat = Cat()
jumpHole(animal: cat)

let elephant = Elephant()
jumpHole(animal: elephant) //TODO: error

let cat1 = Cat1()
jumpHole1(animal: cat1)
