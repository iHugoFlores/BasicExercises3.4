//
//  ViewController.swift
//  UISegmentedControlSwift
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var shapeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        renderFirstSel()
    }

    @IBAction func onIndexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
                renderFirstSel()
            case 1:
                renderSecondSel()
            case 2:
                renderThirdSel()
            default:
                renderFourthSel()
        }
    }
    
    func renderFirstSel() {
        titleLabel.text = "First Segment Selected"
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = RectangleView(frame: CGRect(x: self.view.frame.size.width/2 - width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        demoView.center = shapeView.convert(shapeView.center, from:shapeView.superview)
        shapeView.subviews.forEach{ $0.removeFromSuperview() }
        shapeView.addSubview(demoView)
    }
    
    func renderSecondSel() {
        titleLabel.text = "Second Segment Selected"
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = CircleView(frame: CGRect(x: self.view.frame.size.width/2 - width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        demoView.center = shapeView.convert(shapeView.center, from:shapeView.superview)
        shapeView.subviews.forEach{ $0.removeFromSuperview() }
        shapeView.addSubview(demoView)
    }
    
    func renderThirdSel() {
        titleLabel.text = "Third Segment Selected"
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = TriangleView(frame: CGRect(x: self.view.frame.size.width/2 - width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        demoView.center = shapeView.convert(shapeView.center, from:shapeView.superview)
        shapeView.subviews.forEach{ $0.removeFromSuperview() }
        shapeView.addSubview(demoView)
    }
    
    func renderFourthSel() {
         titleLabel.text = "Fourth Segment Selected"
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = PieView(frame: CGRect(x: self.view.frame.size.width/2 - width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        demoView.center = shapeView.convert(shapeView.center, from:shapeView.superview)
        shapeView.subviews.forEach{ $0.removeFromSuperview() }
        shapeView.addSubview(demoView)
    }
}

