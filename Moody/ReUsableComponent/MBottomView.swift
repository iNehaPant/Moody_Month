
//
//  MBottomView.swift
//  Moody
//
//  Created by Neha Pant on 26/06/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit


class MBottomView : UIView {

    var leftBtnClickedBlock: (() -> Void?)?
    var rightBtnClickedBlock: (() -> Void?)?

    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var rightBtn: UIButton!
    @IBAction func leftAction(_ sender: Any) {
        self.leftBtnClickedBlock?()
    }
    @IBAction func rightAction(_ sender: Any) {
        self.rightBtnClickedBlock?()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initXib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initXib()
    }
    
    func initXib() {
        if let nibView = Bundle.main.loadNibNamed("MBottomView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(nibView)
            nibView.bindFrameToSuperviewBounds()
            
            self.leftBtn.layer.borderColor = UIColor.white.cgColor
            self.rightBtn.layer.borderColor = UIColor.white.cgColor
        }
    }
    func setRightBtnSelectedState() {
        self.rightBtn.isUserInteractionEnabled = true
        self.rightBtn.alpha = 1
    }
    func setLeftBtnTitle(title:String) {
        self.leftBtn.setTitle(title, for: .normal)
    }
    func setRightBtnTitle(title:String) {
        self.rightBtn.setTitle(title, for: .normal)

    }
}
