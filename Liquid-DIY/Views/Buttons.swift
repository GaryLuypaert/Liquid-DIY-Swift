//
//  Buttons.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 16/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class Buttons: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        backgroundColor = UIColor(red:0.36, green:0.78, blue:0.98, alpha:1.0)
        layer.cornerRadius = 5
        setTitleColor(UIColor.white, for: .normal)
        UIFont.boldSystemFont(ofSize: 20)
    }
}
