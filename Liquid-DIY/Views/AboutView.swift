//
//  AboutView.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 16/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class AboutView: UIView {
    
    var view: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXib()
    }
    
    func loadXib() {
        backgroundColor = .clear
        let bundle = Bundle(for: type(of: self))
        if let xib = type(of: self).description().components(separatedBy: ".").last {
            let nib = UINib(nibName: xib, bundle: bundle)
            if let v = nib.instantiate(withOwner: self, options: nil).first as? UIView? {
                view = v
                view?.frame = bounds
                if view != nil {
                    addSubview(view!)
                    view?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
                    view?.backgroundColor = UIColor.red
                    view?.layer.cornerRadius = 20
                }
            }
        }
    }

}
