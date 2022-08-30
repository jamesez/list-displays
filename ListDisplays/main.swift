//
//  main.swift
//  ListDisplays
//
//  Created by Jim Zajkowski on 8/30/22.
//

import Foundation
import CoreGraphics

let maxDisplays: UInt32 = 8
var displayIDs: [CGDirectDisplayID] = [CGDirectDisplayID].init(repeating: 0, count: Int(maxDisplays))
var actualDisplayCount: UInt32 = 0

CGGetOnlineDisplayList(maxDisplays, &displayIDs, &actualDisplayCount)

for i in 0..<Int(actualDisplayCount) {
    let displayID = displayIDs[i]
    let serialNumber = String(format: "%x", CGDisplaySerialNumber(displayID))

    print("Display \(i): \(serialNumber)")
}
