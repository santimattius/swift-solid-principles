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
draw2(vehicle: car)

let motorbike = Motorbike()
draw2(vehicle: motorbike)

print("liskov_substitution_principle")

//without LSP
let cat = Cat()
jumpHole(animal: cat)

let elephant = Elephant()
//jumpHole(animal: elephant) //TODO: error

//with LSP
let cat1 = Cat1()
jumpHole1(animal: cat1)

print("interface_segregation_principle")

//without ISP
let auth1:AutenticationProvider = UserAndPassword()
//auth1.launch2FA()//TODO: error

//with ISP
let auth2:AutenticationProvider1 = UserAndPassword1()
//auth2.launch2FA() // method not exists
let auth3 = AppleProvider1()
let result = auth3.launch2FA()//run

print("dependency_inversion_principle")

//without DIP
let machine = Windows98Machine()

//with DIP
let machine1 = Windows98Machine1(keyboard: StandardKeyboard1(), monitor: LedMonitor())
let machine2 = Windows98Machine1(keyboard: MechanicalKeyboard(), monitor: LcdMonitor())
