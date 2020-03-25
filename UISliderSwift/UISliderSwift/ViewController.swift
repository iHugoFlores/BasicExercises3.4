//
//  ViewController.swift
//  UISliderSwift
//
//  Created by Field Employee on 3/25/20.
//  Copyright © 2020 Hugo Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var totalInput: UITextField!
    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var tipTotalField: UITextField!
    @IBOutlet weak var totalBillField: UITextField!
    
    private var formatter: NumberFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalInput.delegate = self
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard (_:)))
        self.view.addGestureRecognizer(tapGesture)
        
        formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.minimum = 0
        tipField.text = "\(String(format: "%.2f", mySlider.value)) %"
    }
    
    @objc func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        totalInput.resignFirstResponder()
    }

    @IBAction func onMySliderValueChanged(_ sender: Any) {
        tipField.text = "\(String(format: "%.2f", mySlider.value)) %"
        updateInterface()
    }

    @IBAction func onTotalInput(_ sender: UITextField) {
        updateInterface()
    }
    
    func updateInterface() {
        guard let totalBill = Double(totalInput.text!) else {
            return
        }
        tipTotalField.text = String(format: "%.2f", (Double(mySlider.value) / 100) * totalBill)
        totalBillField.text = String(format: "%.2f", ((Double(mySlider.value) / 100) * totalBill) + totalBill)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return formatter.number(from: "\(textField.text ?? "0.00")\(string)") != nil
    }
}

