//
//  DayDesc.swift
//  previewing
//
//  Created by Patrick Fuller on 3/7/22.
//

import Foundation

struct DayDesc: Identifiable {
    let id = UUID()
    var activity: String
    var dayOfWeek: String
}

var dayDescriptions = [
    DayDesc(activity:"Golf @ Southern Pines GC", dayOfWeek: "Friday"),
    DayDesc(activity: "Golf @ CCNC-Dogwood", dayOfWeek: "Saturday-AM"),
    DayDesc(activity: "Golf @ CCNC-Cardinal", dayOfWeek: "Saturday-PM"),
    DayDesc(activity: "Golf @ Pine Needles", dayOfWeek: "Sunday"),
]
