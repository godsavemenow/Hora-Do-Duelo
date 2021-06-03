//
//  AcelerometerFeature.swift
//  Hora do Duelo WatchKit Extension
//
//  Created by Lucas Silva on 03/06/21.
//

import Foundation
import SwiftUI

 struct AccelerometerView: View {

     @ObservedObject
     var motion: MotionManager

     var body: some View {
         VStack {
             Text("Accelerometer Data")
             Text("X: \(motion.x)")
             Text("Y: \(motion.y)")
             Text("Z: \(motion.z)")
         }
     }
 }
