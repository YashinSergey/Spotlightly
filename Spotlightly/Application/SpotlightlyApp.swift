//
//  SpotlightlyApp.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import Foundation

//MARK: - SpotlightlyApp
final class SpotlightlyApp: NSObject {
    
    static let shared = SpotlightlyApp()
    
    //MARK: Properties
    private(set) var currentInterfaceStyle: AppInterfaceStyle = .dark
    
    func updateCurrentInterfaceStyle(style: AppInterfaceStyle) {
        self.currentInterfaceStyle = style
    }
}
