//
//  View+.swift
//  
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI

@available(iOS 14.0, *)
extension View {
    public func uses(_ hudManager: HUDManager, options: HUDOptions = HUDOptions()) -> some View {
        modifier(HUDViewModifier(hudManager: hudManager, options: options))
    }
}
