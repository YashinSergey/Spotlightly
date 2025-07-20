//
//  AppInterfaceStyle.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

//MARK: - AppInterfaceStyle
public enum AppInterfaceStyle {
    case dark
    case light

    public var toUserInterfaceStyle: UIUserInterfaceStyle {
        switch self {
            case .dark:
                .dark
            case .light:
                .light
        }
    }

    public var keyboardAppearance: UIKeyboardAppearance {
        switch self {
            case .dark:
                .dark
            case .light:
                .light
        }
    }

    public static func from(userInterfaceStyle: UIUserInterfaceStyle) -> Self {
        switch userInterfaceStyle {
            case .light, .unspecified:
                .light
            case .dark:
                .dark
            @unknown default:
                .light
        }
    }

    public static func from(keyboardAppearance: UIKeyboardAppearance) -> Self {
        switch keyboardAppearance {
            case .light:
                .light
            case .dark, .default:
                .dark
            @unknown default:
                .light
        }
    }
}

