//
//  CircleView.swift
//  UISegmentedControlSwift
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class CircleView: Demoview {

    override func draw(_ rect: CGRect) {
        self.path = UIBezierPath(ovalIn: CGRect(x: self.frame.size.width/2 - self.frame.size.height/2,
        y: 0.0,
        width: self.frame.size.height,
        height: self.frame.size.height))
        
        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        path.fill()
        
        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        path.stroke()
    }

}
