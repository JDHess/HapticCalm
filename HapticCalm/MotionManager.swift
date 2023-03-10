//
//  MotionManager.swift
//  Zen Motion
//
//  Created by Julie Hess on 12/23/22.
//

import Foundation
import CoreMotion

class MotionManager {
    private var motionManager = CMMotionManager()
    var pitch = 0.0
    var roll = 0.0
    var yaw = 0.0
    init() {
        motionManager.startDeviceMotionUpdates(to: OperationQueue()) { [weak self] motion, error in
            guard let self = self, let motion = motion else {return}
            self.pitch = motion.attitude.pitch
            self.roll = motion.attitude.roll
            self.yaw = motion.attitude.yaw
        }
    }
    deinit {
        motionManager.stopDeviceMotionUpdates()
    }
}
