//
//  HUD.swift
//  
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI

@available(iOS 14.0, *)
public struct HUD: View {
    
    @ObservedObject public var hudManager: HUDManager
    public let options: HUDOptions
    
    @ViewBuilder public var body: some View {
        VStack(spacing: 0) {
            if options.isVertical {
                VStack(alignment: .center, spacing: 8) {
                    if hudManager.showsProgress, options.showsProgressView {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: options.progressViewForegroundColor))
                    }
                    Text(hudManager.message)
                        .font(options.font)
                        .foregroundColor(options.foregroundColor)
                }
            } else {
                HStack(alignment: .center, spacing: 8) {
                    if hudManager.showsProgress, options.showsProgressView {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: options.progressViewForegroundColor))
                    }
                    Text(hudManager.message)
                        .font(options.font)
                        .foregroundColor(options.foregroundColor)
                }
            }
        }
        .padding(.vertical, options.verticalPadding)
        .padding(.horizontal, options.horizontalPadding)
        .background(options.backgroundColor)
        .cornerRadius(options.cornerRadius)
        .shadow(color: options.shadowColor, radius: options.shadowRadius, x: options.shadowOffset.width, y: options.shadowOffset.height)
        .offset(y: hudManager.isPresented ? options.slideDownOffset : -100)
        .animation(options.animated ? .easeInOut : .none)
        .onTapGesture {
            if options.hidesOnTap {
                hudManager.hide()
            }
        }
    }
}
