//
//  Int.swift
//  StageKeeper
//
//  Created by Klaudiusz Mękarski on 14/04/2024.
//

import Foundation

extension Int {
    func toTimeString(withSeconds: Bool) -> String {
        let hours = self / 3600
        let minutes = self / 60
        let minutesString = minutes < 10 && hours > 0 ? "0\(minutes)" : "\(minutes)"

        if withSeconds {
            let seconds = self % 60
            let secondsString = seconds < 10 ? "0\(seconds)" : "\(seconds)"
            if hours > 0 {
                return "\(hours):\(minutesString):\(secondsString)h"
            }
            if minutes > 0 {
                return "\(minutesString):\(secondsString)m"
            }
            return "\(seconds)s"
        } else {
            let minutes = self / 60
            let hours = self / 3600
            if hours > 0 {
                return "\(hours)h \(minutes)m"
            }
            return "\(minutes)m"
        }
    }
}
