//
//  LockFeatureFAQDetailViewController.swift
//  Bankey
//
//  Created by Finsify iOS on 5/31/22.
//

import UIKit

class LockFeatureFAQDetailViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    private func style() {
        questionLabel.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#FFFFFF"))
        answerLabel.textColor = UIColor.getColorWithLightColor(Util.color(fromHexString: "#1D1D1D"), darkColor: Util.color(fromHexString: "#99FFFFFF"))
    }

}
