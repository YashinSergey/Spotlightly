//
//  UIColor+Hex.swift
//  Spotlightly
//
//  Created by mr.Blue on 20.07.2025.
//

import UIKit

extension UIColor {
    
    var hex: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let r = Int(red * 255)
        let g = Int(green * 255)
        let b = Int(blue * 255)
        let rgb = (r << 16) | (g << 8) | b
        
        return String(format: "%06x", rgb)
    }
    
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}

extension UIColor {
    
    struct HEX {
        // Whites & Greys (Light)
        public static let hFFFFFF = UIColor(hex: 0xFFFFFF)
        public static let hFAF9FC = UIColor(hex: 0xFAF9FC)
        public static let hF6F5F9 = UIColor(hex: 0xF6F5F9)
        public static let hF2F1F7 = UIColor(hex: 0xF2F1F7)
        public static let hE8E7F0 = UIColor(hex: 0xE8E7F0)
        public static let hDFDEE8 = UIColor(hex: 0xDFDEE8)
        public static let hD4D2DB = UIColor(hex: 0xD4D2DB)
        public static let hBBB9C3 = UIColor(hex: 0xBBB9C3)
        public static let h9B99A6 = UIColor(hex: 0x9B99A6)
        public static let h6B6878 = UIColor(hex: 0x6B6878)
        public static let h383C4F = UIColor(hex: 0x383C4F)
        public static let h2D2D30 = UIColor(hex: 0x2D2D30)
        public static let h1C1C1E = UIColor(hex: 0x1C1C1E)
        public static let h000000 = UIColor(hex: 0x000000)
        
        // Dark Theme Greys
        public static let h2C2C2E = UIColor(hex: 0x2C2C2E)
        public static let h3A3A3C = UIColor(hex: 0x3A3A3C)
        public static let h48484A = UIColor(hex: 0x48484A)
        public static let h636366 = UIColor(hex: 0x636366)
        public static let h8E8E93 = UIColor(hex: 0x8E8E93)
        public static let hAEAEB2 = UIColor(hex: 0xAEAEB2)
        public static let hF2F2F7 = UIColor(hex: 0xF2F2F7)
        
        // Reds
        public static let hFFF8F7 = UIColor(hex: 0xFFF8F7)
        public static let hFFF3F2 = UIColor(hex: 0xFFF3F2)
        public static let hFFE8E6 = UIColor(hex: 0xFFE8E6)
        public static let hFFD1CE = UIColor(hex: 0xFFD1CE)
        public static let hFFB3AF = UIColor(hex: 0xFFB3AF)
        public static let hFF9590 = UIColor(hex: 0xFF9590)
        public static let hFF7A73 = UIColor(hex: 0xFF7A73)
        public static let hFF3B30 = UIColor(hex: 0xFF3B30)
        public static let hE6342A = UIColor(hex: 0xE6342A)
        public static let hCC2D24 = UIColor(hex: 0xCC2D24)
        
        // Blues
        public static let hF7FAFF = UIColor(hex: 0xF7FAFF)
        public static let hEEF6FF = UIColor(hex: 0xEEF6FF)
        public static let hDCECFF = UIColor(hex: 0xDCECFF)
        public static let hC2DDFF = UIColor(hex: 0xC2DDFF)
        public static let h99C7FF = UIColor(hex: 0x99C7FF)
        public static let h70B0FF = UIColor(hex: 0x70B0FF)
        public static let h4A90E2 = UIColor(hex: 0x4A90E2)
        public static let h007AFF = UIColor(hex: 0x007AFF)
        public static let h006BD6 = UIColor(hex: 0x006BD6)
        public static let h005CBF = UIColor(hex: 0x005CBF)
        public static let h07071f = UIColor(hex: 0x07071f)
        
        // Yellows
        public static let hFFFDF5 = UIColor(hex: 0xFFFDF5)
        public static let hFFFBEB = UIColor(hex: 0xFFFBEB)
        public static let hFFF7D6 = UIColor(hex: 0xFFF7D6)
        public static let hFFF2C2 = UIColor(hex: 0xFFF2C2)
        public static let hFFE99E = UIColor(hex: 0xFFE99E)
        public static let hFFD700 = UIColor(hex: 0xFFD700)
        public static let hFFCC02 = UIColor(hex: 0xFFCC02)
        public static let hE6B800 = UIColor(hex: 0xE6B800)
        public static let hCCA300 = UIColor(hex: 0xCCA300)
        
        // Greens
        public static let hF6FFF8 = UIColor(hex: 0xF6FFF8)
        public static let hEDFFF0 = UIColor(hex: 0xEDFFF0)
        public static let hDBFFE1 = UIColor(hex: 0xDBFFE1)
        public static let hC2FFCE = UIColor(hex: 0xC2FFCE)
        public static let h99FFB0 = UIColor(hex: 0x99FFB0)
        public static let h6AFF91 = UIColor(hex: 0x6AFF91)
        public static let h30D158 = UIColor(hex: 0x30D158)
        public static let h2BB84F = UIColor(hex: 0x2BB84F)
        public static let h259F46 = UIColor(hex: 0x259F46)
        
        // Oranges
        public static let hFFFAF5 = UIColor(hex: 0xFFFAF5)
        public static let hFFF5EB = UIColor(hex: 0xFFF5EB)
        public static let hFFE8D6 = UIColor(hex: 0xFFE8D6)
        public static let hFFD6B8 = UIColor(hex: 0xFFD6B8)
        public static let hFFC299 = UIColor(hex: 0xFFC299)
        public static let hFFAD7A = UIColor(hex: 0xFFAD7A)
        public static let hFF9500 = UIColor(hex: 0xFF9500)
        public static let hE6850E = UIColor(hex: 0xE6850E)
        public static let hCC750C = UIColor(hex: 0xCC750C)
        
        // Purples
        public static let hFAF8FF = UIColor(hex: 0xFAF8FF)
        public static let hF5F2FF = UIColor(hex: 0xF5F2FF)
        public static let hEBE5FF = UIColor(hex: 0xEBE5FF)
        public static let hDDD1FF = UIColor(hex: 0xDDD1FF)
        public static let hC7B8FF = UIColor(hex: 0xC7B8FF)
        public static let hB19EFF = UIColor(hex: 0xB19EFF)
        public static let h5856D6 = UIColor(hex: 0x5856D6)
        public static let h4F4DC0 = UIColor(hex: 0x4F4DC0)
        public static let h4644AA = UIColor(hex: 0x4644AA)
    }
}
