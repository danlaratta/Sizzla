//
//  DismissKeyboard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/8/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
