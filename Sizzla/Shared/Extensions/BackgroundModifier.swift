//
//  BackgroundModifier.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/28/24.
//

import Foundation
import SwiftUI

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Color("bg").ignoresSafeArea() // Enforce the background color
            content // The actual content layered on top
        }
    }
}

extension View {
    func grayBackground() -> some View {
        self.modifier(BackgroundModifier())
    }
}
