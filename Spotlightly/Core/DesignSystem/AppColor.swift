//
//  AppColor.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

//MARK: - AppColor
struct AppColor {
    
    //MARK: Background Colors
    public struct Background {
        public static func primary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.white
            case .dark:
                return UIColor.Palette.Blue.blue01
            }
        }
        
        public static func secondary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.grey05
            case .dark:
                return UIColor.Palette.DarkGrey.dark50
            }
        }
        
        public static func tertiary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.grey10
            case .dark:
                return UIColor.Palette.DarkGrey.dark40
            }
        }
        
        public static func movieCard(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.white
            case .dark:
                return UIColor.Palette.DarkGrey.dark40
            }
        }
    }
    
    //MARK: Text Colors
    public struct Text {
        public static func primary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.grey80
            case .dark:
                return UIColor.Palette.DarkGrey.dark01
            }
        }
        
        public static func secondary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.grey60
            case .dark:
                return UIColor.Palette.DarkGrey.dark05
            }
        }
        
        public static func tertiary(for style: AppInterfaceStyle) -> UIColor {
            switch style {
            case .light:
                return UIColor.Palette.Grey.grey50
            case .dark:
                return UIColor.Palette.DarkGrey.dark10
            }
        }
    }
    
    //MARK: Accent Colors (are not theme dependent)
    public struct Accent {
        public static let primary = UIColor.Palette.Blue.blue60
        public static let rating = UIColor.Palette.Yellow.yellow50
        public static let favorite = UIColor.Palette.Red.red60
        public static let success = UIColor.Palette.Green.green60
        public static let warning = UIColor.Palette.Orange.orange60
        public static let error = UIColor.Palette.Red.red60
    }
    
    //MARK: Border Colors
    public struct Border {
        public static func light(for style: AppInterfaceStyle) -> UIColor {
            switch style {
                case .light:
                    return UIColor.Palette.Grey.grey20
                case .dark:
                    return UIColor.Palette.DarkGrey.dark30
            }
        }
        
        public static func dark(for style: AppInterfaceStyle) -> UIColor {
            switch style {
                case .light:
                    return UIColor.Palette.Grey.grey40
                case .dark:
                    return UIColor.Palette.DarkGrey.dark20
            }
        }
    }
}

// MARK: - Helper Enums
public enum BackgroundType {
    case primary, secondary, tertiary, movieCard
}

public enum TextType {
    case primary, secondary, tertiary
}

public enum BorderType {
    case light, dark
}
