//
//  ViewController.swift
//  HW_2.1.2_trafficLight
//
//  Created by Maxim Mitin on 7.07.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redViewLbl: UIView!
    @IBOutlet weak var yellowViewLbl: UIView!
    @IBOutlet weak var greenViewLbl: UIView!
    
    @IBOutlet weak var buttonLbl: UIButton!
    
    enum trafficLights {
        case red, yellow , green
    }
    var activeLight : trafficLights = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redViewLbl.layer.cornerRadius = 70
        yellowViewLbl.layer.cornerRadius = 70
        greenViewLbl.layer.cornerRadius = 70
        
        redViewLbl.backgroundColor = .red.withAlphaComponent(0.1)
        yellowViewLbl.backgroundColor = .yellow.withAlphaComponent(0.1)
        greenViewLbl.backgroundColor = .green.withAlphaComponent(0.1)
    }
    
    func switchLight() {
        switch activeLight{
        case .red:
            redViewLbl.backgroundColor = .red.withAlphaComponent(0.9)
            yellowViewLbl.backgroundColor = .yellow.withAlphaComponent(0.1)
            greenViewLbl.backgroundColor = .green.withAlphaComponent(0.1)
            activeLight = .yellow
        case .yellow:
            yellowViewLbl.backgroundColor = .yellow.withAlphaComponent(0.9)
            redViewLbl.backgroundColor = .red.withAlphaComponent(0.1)
            greenViewLbl.backgroundColor = .green.withAlphaComponent(0.1)
            activeLight = .green
        case .green:
            greenViewLbl.backgroundColor = .green.withAlphaComponent(0.9)
            yellowViewLbl.backgroundColor = .yellow.withAlphaComponent(0.1)
            redViewLbl.backgroundColor = .red.withAlphaComponent(0.1)
            activeLight = .red
        }
    }

    @IBAction func buttonDidClick(_ sender: Any) {
        buttonLbl.setTitle("Next", for: .normal)
        
        switchLight()
    
 }
}
