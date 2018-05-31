//
//  ColorExtension.swift
//  HALP
//
//  Created by Qihao Leng on 5/14/18.
//  Copyright © 2018 Team Zero. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

extension UIColor {
	convenience init (hex: Int) {
		let red = hex & 0xff0000
		let green = hex & 0x00ff00
		let blue = hex & 0x0000ff
		
		let CGred = CGFloat(red >> 16) / 255.0
		let CGgreen = CGFloat(green >> 8) / 255.0
		let CGblue = CGFloat(blue) / 255.0
		
		self.init(red: CGred, green: CGgreen, blue: CGblue, alpha: CGFloat(1.0))
	}
    
    convenience init (hex: Int, alpha: CGFloat) {
        let red = hex & 0xff0000
        let green = hex & 0x00ff00
        let blue = hex & 0x0000ff
        
        let CGred = CGFloat(red >> 16) / 255.0
        let CGgreen = CGFloat(green >> 8) / 255.0
        let CGblue = CGFloat(blue) / 255.0
        
        self.init(red: CGred, green: CGgreen, blue: CGblue, alpha: alpha)
    }
    
    struct HalpColors {
        //rgb(255,90,95)
        static let pastelRed = UIColor.rgbColor(255, 90, 95)
        //rgb(211,106,99)
        static let fuzzyWuzzy = UIColor.rgbColor(211, 106, 99)
        //rgb(89,38,47)
        static let caputMortuum = UIColor.rgbColor(89, 38, 47)
        //rgb(206,137,100)
        static let paleCopper = UIColor.rgbColor(206, 137, 100)
        //blue colors
        //rgb(53,142,252)
        static let brilliantAzure = UIColor.rgbColor(53, 142, 252)
    }
}


class ColorTheme {
	var text: UIColor
	var task: UIColor
	var taskBackground: UIColor
	var background: UIColor
	var padding: UIColor
	
	init(text: Int, task: Int, taskBackground: Int, background: Int, padding: Int) {
		self.text = UIColor(hex: text)
		self.taskBackground = UIColor(hex: taskBackground)
		self.background = UIColor(hex: background)
		self.task = UIColor(hex: task)
		self.padding = UIColor(hex: padding)
	}
	
	static let regular = ColorTheme(text: 0xffffff, task: 0x59262f, taskBackground: 0x59262f, background: 0xffffff, padding: 0xffffff)
	static let dark = ColorTheme(text:0x0, task: 0x176a90, taskBackground: 0xffffff, background: 0x0, padding: 0x0)
	
	//TODO: Add more themes
}

enum Theme: Int {
	case regular = 0
	case dark = 1
}

