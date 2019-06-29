//
//  MTopTitleView.swift
//  Moody
//
//  Created by Neha Pant on 27/06/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit

class MTopTitleView: UIView {

    @IBOutlet weak var titleLbl: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        initXib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initXib()
    }
    
    func initXib() {
        if let nibView = Bundle.main.loadNibNamed("MTopTitleView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(nibView)
            nibView.translatesAutoresizingMaskIntoConstraints = false
            self.invalidateIntrinsicContentSize()
            self.layoutIfNeeded()
            
        }
    }

}
