//
//  HUDManager.swift
//  
//
//  Created by Alex Nagy on 25.12.2020.
//

import SwiftUI

@available(iOS 14.0, *)
public class HUDManager: ObservableObject {
    
    public var message: String = ""
    @Published public var isPresented: Bool = false
    public var showsProgress: Bool = true
    
    public init() { }
    
    public func show(_ message: String) {
        self.showsProgress = true
        self.message = message
        isPresented = true
    }
    
    public func update(_ message: String) {
        show(message)
    }
    
    public func hide() {
        isPresented = false
    }
    
    public func hide(_ message: String) {
        self.showsProgress = false
        self.message = message
        isPresented = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            self.isPresented = false
        }
    }
}
