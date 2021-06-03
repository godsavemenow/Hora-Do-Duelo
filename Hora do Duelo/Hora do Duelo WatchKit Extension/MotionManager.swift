//
//  MotionManager.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Lucas Silva on 03/06/21.
//

import Foundation
import Combine
import CoreMotion

class MotionManager: ObservableObject {

    private var motionManager: CMMotionManager

    @Published
    var x: Double = 0.0
    @Published
    var y: Double = 0.0
    @Published
    var z: Double = 0.0
    @Published
    var roll: Bool = false
    @Published
    var diceface: Int = Int.random(in: 1...6)

    init() {
     self.motionManager = CMMotionManager()
     self.motionManager.accelerometerUpdateInterval = 0.1
     self.motionManager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
         if let accelerometerData = data {
             self.x = accelerometerData.acceleration.x
             self.y = accelerometerData.acceleration.y
             self.z = accelerometerData.acceleration.z
             }
        if(self.x > abs(1.2) || self.y > abs(1.2) || self.z > abs(1.2)){
                self.diceface = Int.random(in: 0...5)
        }
         }
     }
}
