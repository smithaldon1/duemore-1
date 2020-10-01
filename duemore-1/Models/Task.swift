//
//  Task.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/26/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import Foundation
import SwiftUI

enum Priority {
    case low, medium, high
}

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var note: String
    var dueDate: Date
    var dueTime: Calendar
    var startDate: Date
    var startTime: Calendar
    var priority: Priority
}
