//
//  resultView.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 17/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class resultView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }

}
