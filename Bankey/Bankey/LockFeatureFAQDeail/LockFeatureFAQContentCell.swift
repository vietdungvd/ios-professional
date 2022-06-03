//
//  LockFeatureFAQContentCell.swift
//  Bankey
//
//  Created by Finsify iOS on 5/31/22.
//

import UIKit

class LockFeatureFAQContentCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var subContent1Label: UILabel!
    @IBOutlet weak var subContent2Label: UILabel!
    @IBOutlet weak var optionSubContent1Label: UILabel!
    @IBOutlet weak var optionSubContent2Label: UILabel!
    @IBOutlet weak var optionSubContent3Label: UILabel!
    @IBOutlet weak var dividerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        style()
    }
    
    private func style() {
        contentLabel.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        subContent1Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#99FFFFFF"))
        subContent2Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#99FFFFFF"))
        optionSubContent1Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        optionSubContent2Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        optionSubContent3Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        dividerView.backgroundColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#C9C9C9"), darkColor: Util.color(fromHexString: "#29FFFFFF"))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
