//
//  Inbox.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/24/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import Foundation

struct InboxItem: Identifiable {
    var id = UUID()
    var title: String
    var note: String
}
