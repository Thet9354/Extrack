//
//  Recurrence.swift
//  ExTrack
//
//  Created by Phoon Thet Pine on 5/4/23.
//

import Foundation
import RealmSwift

enum Recurrence: String, PersistableEnum, CaseIterable {
    case none = "None"
    case daily = "Daily"
    case weekly = "Weekly"
    case monthly = "Monthy"
    case yearly = "Yearly"
}
