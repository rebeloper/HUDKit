//
//  HUDViewModifier.swift
//  
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI

@available(iOS 14.0, *)
public struct HUDViewModifier: ViewModifier {
    
    @ObservedObject public var hudManager: HUDManager
    var options: HUDOptions
    
    public func body(content: Content) -> some View {
        ZStack(alignment: .top) {
            content
                .disabled(options.disablesContent ? hudManager.isPresented : false)
                .blur(radius: hudManager.isPresented ? options.blurRadius : 0, opaque: false)
            
            if hudManager.isPresented {
                options.contentCoverColor.opacity(hudManager.isPresented ? 1 : 0).ignoresSafeArea()
                
                HUD(hudManager: hudManager, options: options)
                    .padding(.horizontal, options.hudHorizontalPadding)
            }
        }
    }
}
