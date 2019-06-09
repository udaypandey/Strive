//
//  Strive.swift
//  Strive
//
//  Created by Uday Pandey on 07/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public enum ResourceState: Int, Codable {
    case meta = 1
    case summary
    case detailed
}

enum MeasurementPreference: String, Codable {
    case meters
    case feet
}

public enum ActivityType: String {
    case alpineSki = "AlpineSki"
    case backcountrySki = "BackcountrySki"
    case canoeing = "Canoeing"
    case crossfit = "Crossfit"
    case eBikeRide = "EBikeRide"
    case elliptical = "Elliptical"
    case golf = "Golf"
    case handcycle = "Handcycle"
    case hike = "Hike"
    case iceSkate = "IceSkate"
    case inlineSkate = "InlineSkate"
    case kayaking = "Kayaking"
    case kitesurf = "Kitesurf"
    case nordicSki = "NordicSki"
    case ride = "Ride"
    case rockClimbing = "RockClimbing"
    case rollerSki = "RollerSki"
    case rowing = "Rowing"
    case run = "Run"
    case sail = "Sail"
    case skateboard = "Skateboard"
    case snowboard = "Snowboard"
    case snowshoe = "Snowshoe"
    case soccer = "Soccer"
    case stairStepper = "StairStepper"
    case standUpPaddling = "StandUpPaddling"
    case surfing = "Surfing"
    case swim = "Swim"
    case velomobile = "Velomobile"
    case virtualRide = "VirtualRide"
    case virtualRun = "VirtualRun"
    case walk = "Walk"
    case weightTraining = "WeightTraining"
    case wheelchair = "Wheelchair"
    case windsurf = "Windsurf"
    case workout = "Workout"
    case yoga = "Yoga"
}
