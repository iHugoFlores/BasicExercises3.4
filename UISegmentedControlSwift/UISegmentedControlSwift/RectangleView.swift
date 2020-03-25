//
//  RectangleView.swift
//  UISegmentedControlSwift
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class RectangleView: Demoview {

    override func draw(_ rect: CGRect) {
        self.createRectangle()
        
        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        path.fill()
        
        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        path.stroke()
    }

}
