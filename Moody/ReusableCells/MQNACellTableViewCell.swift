//
//  MQNACellTableViewCell.swift
//  Moody
//
//  Created by Neha Pant on 27/06/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit

class MQNACellTableViewCell: UITableViewCell {
    @IBOutlet weak var qnaTxt: UILabel!
    @IBOutlet weak var qnaSelectionBtn:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func rightIconSelected() {
        let image = UIImage(named: "option-selected-icon") as UIImage?
        self.qnaSelectionBtn.image = image
    }
    func rightIconUnSelected() {
        let image = UIImage(named: "option-unselected-icon") as UIImage?
        self.qnaSelectionBtn.image = image
    }
}
