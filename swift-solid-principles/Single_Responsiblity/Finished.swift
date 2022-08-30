//
//  Finished.swift
//  swift-solid-principles
//
//  Created by Santiago Mattiauda on 30/8/22.
//

import Foundation

struct Vehicle2 {
    let wheelCount: Int
    let maxSpeed: Int
    
    func detail() -> String {
      return  """
        wheelCount: \(wheelCount)
        maxSpeed: \(maxSpeed)
        """
    }
}

final class VehiclePrinter{
    
    func show(vh: Vehicle2) {
        print(vh.detail())
    }
}
