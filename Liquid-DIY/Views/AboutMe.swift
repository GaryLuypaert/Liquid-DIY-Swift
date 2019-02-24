//
//  AboutMe.swift
//  Liquid-DIY
//
//  Created by Gary Luypaert on 16/01/2019.
//  Copyright © 2019 Gary Luypaert. All rights reserved.
//

import UIKit

class AboutMe: UIView {

    var view: UIView?
    
    @IBOutlet weak var imgAbout: UIImageView!
    @IBOutlet weak var descTextView: UITextView!
    @IBOutlet weak var closeBtn: Buttons!
    @IBOutlet weak var copyrightLabel: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadXib()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadXib()
        setup()
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
                    view?.backgroundColor = UIColor.white
                    view?.layer.cornerRadius = 20
                }
            }
        }
    }
    
    func setup() {
        copyrightLabel.text = "© Copyright - Gary Luypaert \n www.garyluypaert.be"
        layer.borderWidth = 1
        layer.borderColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 5
        descTextView.text = "1) Enter the base volume (ml) \n\n2) Enter the desired value of booster (mg) \n\n3) Enter the advisable percentage of flavour (%)\n\n and that's it!\n\nThe DIY Calculator is a guide only. Take car of wear gloves and wash your hands with soap and water if you get liquid on your hands or when you have finished making your DIY E-Liquid. "
    }

    @IBAction func closeAction(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name("closeAbout"), object: nil)
    }
    
}
