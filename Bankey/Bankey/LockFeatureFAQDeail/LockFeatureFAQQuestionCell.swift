//
//  LockFeatureFAQQuestionCell.swift
//  Bankey
//
//  Created by Finsify iOS on 5/31/22.
//

import UIKit

class LockFeatureFAQQuestionCell: UITableViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var dividerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        style()
    }
    
    private func style() {
        questionLabel.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        dividerView.backgroundColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#F5F5F5"), darkColor: Util.color(fromHexString: "#29FFFFFF"))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
