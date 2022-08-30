//
//  Finished.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation

open class Animal1 {
    func walk() {}
}

open class LightweightAnimal: Animal1{
    func jump() {}
}

func jumpHole1(animal: Animal1) {
    animal.walk()
    animal.jump()
    animal.walk()
}

final class Elephant1: Animal1 {
    
}

final class Cat1: LightweightAnimal {
    
}
