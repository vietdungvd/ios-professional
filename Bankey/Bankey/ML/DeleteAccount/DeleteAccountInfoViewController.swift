//
//  DeleteAccountInfoViewController.swift
//  Bankey
//
//  Created by Finsify iOS on 6/8/22.
//

import Foundation
import UIKit

class DeleteAccountInfoViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var subContent1Label: UILabel!
    @IBOutlet weak var subContent2Label: UILabel!
    @IBOutlet weak var subContent3Label: UILabel!
    @IBOutlet weak var subContent4Label: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    private func style() {
        contentLabel.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        subContent1Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        subContent2Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        subContent3Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        subContent4Label.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        continueButton.backgroundColor = Util.color(fromHexString: "#2DB84C")
        continueButton.setTitleColor(Util.color(fromHexString: "#FFFFFF"), for: .normal)
        continueButton.layer.cornerRadius = continueButton.frame.size.height/2
    }
}

