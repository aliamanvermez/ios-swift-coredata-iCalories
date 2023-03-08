//
//  TimeFormatting.swift
//  iCalories
//
//  Created by Ali Amanvermez on 9.03.2023.
//

import Foundation

func calculateTimeSince(date : Date) -> String{
    let minutes = Int(-date.timeIntervalSinceNow)/60
    let hours = minutes/60
    let days = minutes / 24
    
    if minutes < 120 {
        return "\(minutes) minutes ago"
    }else if minutes >= 120 && hours < 48 {
        return "\(hours) hours ago"
    }else {
        return "\(days) days ago"
    }
}
