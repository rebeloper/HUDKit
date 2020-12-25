//
//  HUDOptions.swift
//  
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI

@available(iOS 14.0, *)
public struct HUDOptions {
    public var showsProgressView: Bool
    public var progressViewForegroundColor: Color
    public var font: Font
    public var foregroundColor: Color
    public var backgroundColor: Color
    public var verticalPadding: CGFloat
    public var horizontalPadding: CGFloat
    public var hudHorizontalPadding: CGFloat
    public var cornerRadius: CGFloat
    public var shadowColor: Color
    public var shadowRadius: CGFloat
    public var shadowOffset: CGSize
    public var slideDownOffset: CGFloat
    public var hidesOnTap: Bool
    public var animated: Bool
    public var isVertical: Bool
    public var disablesContent: Bool
    public var contentCoverColor: Color
    public var blurRadius: CGFloat
    
    public init(showsProgressView: Bool = true,
                progressViewForegroundColor: Color = .gray,
                font: Font = .footnote,
                foregroundColor: Color = .gray,
                backgroundColor: Color = .white,
                verticalPadding: CGFloat = 6,
                horizontalPadding: CGFloat = 12,
                hudHorizontalPadding: CGFloat = 8,
                cornerRadius: CGFloat = 15,
                shadowColor: Color = Color(.gray).opacity(0.4),
                shadowRadius: CGFloat = 16,
                shadowOffset: CGSize = CGSize(width: 0, height: 5),
                slideDownOffset: CGFloat = 8,
                hidesOnTap: Bool = false,
                animated: Bool = true,
                isVertical: Bool = false,
                disablesContent: Bool = true,
                contentCoverColor: Color = Color(.gray).opacity(0.1),
                blurRadius: CGFloat = 0) {
        self.showsProgressView = showsProgressView
        self.progressViewForegroundColor = progressViewForegroundColor
        self.font = font
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.verticalPadding = verticalPadding
        self.horizontalPadding = horizontalPadding
        self.hudHorizontalPadding = hudHorizontalPadding
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.shadowOffset = shadowOffset
        self.slideDownOffset = slideDownOffset
        self.hidesOnTap = hidesOnTap
        self.animated = animated
        self.isVertical = isVertical
        self.disablesContent = disablesContent
        self.contentCoverColor = contentCoverColor
        self.blurRadius = blurRadius
    }
}

