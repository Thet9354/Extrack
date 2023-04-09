//
//  KeyboardUtils.swift
//  ExTrack
//
//  Created by Phoon Thet Pine on 5/4/23.
//

import UIKit

func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}
