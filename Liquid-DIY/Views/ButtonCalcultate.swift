//
//  ButtonCalcultate.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 17/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class ButtonCalcultate: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    func setupButton() {
        backgroundColor = UIColor(red:0.29, green:0.85, blue:0.39, alpha:1.0)
        layer.cornerRadius = 5
        setTitleColor(UIColor.white, for: .normal)
        UIFont.boldSystemFont(ofSize: 20)
    }
}
