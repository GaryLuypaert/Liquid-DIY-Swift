//
//  ViewController.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 16/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitleLabel: UILabel!
    
    @IBOutlet weak var baseField: UITextField!
    @IBOutlet weak var aromeField: UITextField!
    
    @IBOutlet weak var boosterField: UITextField!
    
    
    @IBOutlet weak var baseResultLabel: UILabel!
    @IBOutlet weak var aromeResultLabel: UILabel!
    @IBOutlet weak var boosterResultLabel: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    
    @IBOutlet weak var resetBtn: Buttons!
    
    @IBOutlet weak var fieldView: UIView!
    @IBOutlet weak var aboutView: AboutMe!
    @IBOutlet weak var resultView: resultView!
    
    let format = "%.2f"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutView.alpha = 0
        resetBtn.alpha = 0
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tap)
        
        NotificationCenter.default.addObserver(self, selector: #selector(closeAbout), name: NSNotification.Name("closeAbout"), object: nil)
        
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func closeAbout() {
        
        UIView.animate(withDuration: 0.8) {
            // Gérer les alpha
            self.aboutView.alpha = 0
            self.fieldView.alpha = 1
            self.resultView.alpha = 1
            self.appTitleLabel.alpha = 1
            
        }
    }
    
    func calculate() {
        var base = Float(baseField.text!)
        var nico = Float(boosterField.text!)
        var arome = Float(aromeField.text!)
//        var multBoosterOrNot: String
        
            if base == nil {
                base = 0
            }
            if nico == nil {
                nico = 0
            }
            if arome == nil {
                arome = 0
            }
            // Nom de variable à changer
            // Supprimer les print
            let resultA = base! * nico!
            print(resultA)
            
            let booster = resultA / 200
            print("Booster: \(booster) ml")
            
            let boosterML = booster * 10
            
            let resultD = base! + boosterML
            print(resultD)
            
            let resultArome = (resultD / 100) * arome!
            print("Arome: ", resultArome)
            
            let total = resultD + resultArome
            print("Total:", total)
        
//        multBoosterOrNot = booster > 1 ? "boosters" : "booster"
        
        hideKeyboard()
        resetBtn.alpha = 1
        
        baseResultLabel.text = String(format: format, base!) + " ml"
        aromeResultLabel.text = String(format: format, resultArome) + " ml"
        boosterResultLabel.text = String(format: format, boosterML) + " ml"
        totalResultLabel.text = String(format: format, total) + " ml"
    }

//    @IBAction func calculateAction(_ sender: Any) {
//        calculate()
//
//        // Gérer les alpha
//        aboutView.alpha = 1
//        fieldView.alpha = 0
//        resultView.alpha = 0
//    }
    
    @IBAction func calculateAction(_ sender: Any) {
        calculate()
    }
    
    
    @IBAction func resetValue(_ sender: Any) {
        baseField.text = "0"
        boosterField.text = "0"
        aromeField.text = "0"
        
        if baseField.text == "0" && boosterField.text == "0" && aromeField.text == "0" {
            resetBtn.alpha = 0
        }
        
        baseResultLabel.text = "0 ml"
        aromeResultLabel.text = "0 ml"
        boosterResultLabel.text = "0 ml"
        totalResultLabel.text = "0 ml"
    }
    
    @IBAction func aboutBtn(_ sender: Any) {
        UIView.animate(withDuration: 0.8) {
            // Gérer les alpha
            self.aboutView.alpha = 1
            self.fieldView.alpha = 0
            self.resultView.alpha = 0
            self.appTitleLabel.alpha = 0
        }
    }
    
}

