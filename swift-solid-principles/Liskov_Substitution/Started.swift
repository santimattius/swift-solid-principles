//
//  Started.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation

open class Animal{
    func walk() {}
    func jump() {}
}

func jumpHole(animal: Animal) {
    animal.walk()
    animal.jump()
    animal.walk()
}

final class Elephant: Animal {
    
    func jump() {
        throw NoJumpError(message: "Jump not support")
    }
}

final class Cat: Animal {
    
}

struct NoJumpError:Error {
    let message:String
}
