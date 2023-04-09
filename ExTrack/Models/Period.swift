//
//  Period.swift
//  ExTrack
//
//  Created by Phoon Thet Pine on 5/4/23.
//

import Foundation
import RealmSwift

enum Period: String, PersistableEnum, CaseIterable {
    case day = "Day"
    case week = "Week"
    case month = "Month"
    case year = "Year"
}
