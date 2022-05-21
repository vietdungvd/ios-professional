//
//  FormatTextViewController.swift
//  Bankey
//
//  Created by Finsify iOS on 5/6/22.
//

import UIKit

class FormatTextViewController: UIViewController {
    
    let stackView = UIStackView()
//    lazy var label: UILabel = {
//        let label = UILabel()
//        label.attributedText = makeText()
//
//        return label
//    }()
    
    var label = UILabel()
    
    let tableViewCellDemo = TableViewCellDemo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension FormatTextViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.attributedText = makeText1()

        //tableViewCellDemo.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 100)
    }
    
    func layout() {
        //stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(tableViewCellDemo.contentView)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

extension FormatTextViewController {
    func makeText() -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.firstLineHeadIndent = 24
        paragraphStyle.headIndent = 8
        paragraphStyle.tailIndent = -8
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = .justified
        paragraphStyle.paragraphSpacingBefore = 4
        paragraphStyle.paragraphSpacing = 24
        
        let attributes = [
            NSAttributedString.Key.foregroundColor: UIColor.systemGray,
            NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .body),
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        
        let rootString = NSMutableAttributedString(string: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n", attributes: attributes)
        
        let secondParagraph = NSAttributedString(string: "Vulputate enim nulla aliquet porttitor lacus. Ipsum suspendisse ultrices gravida dictum fusce ut placerat. In fermentum et sollicitudin ac orci phasellus egestas tellus. Eu facilisis sed odio morbi quis commodo odio.", attributes: attributes)
        
        rootString.append(secondParagraph)
        
        return rootString
    }
    
    func makeText1() -> NSAttributedString {
        var plainTextAttributes = [NSAttributedString.Key: AnyObject]()
        plainTextAttributes[.font] = UIFont.preferredFont(forTextStyle: .body)
        
        var boldTextAttributes = [NSAttributedString.Key: AnyObject]()
        boldTextAttributes[.font] = UIFont(descriptor: UIFont.preferredFont(forTextStyle: .body).fontDescriptor.withSymbolicTraits(.traitBold)!, size: 0.0)
        
        let text = NSMutableAttributedString(string: "Please", attributes: plainTextAttributes)
        text.append(NSAttributedString(string: " stay on this screen ", attributes: boldTextAttributes))
        text.append(NSAttributedString(string: "while we activate your service. This process may take a few minutes.", attributes: plainTextAttributes))
        
        return text
    }
    
    func makeText2() -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        
        var headerTextAttributes = [NSAttributedString.Key: AnyObject]()
        headerTextAttributes[.font] = UIFont(descriptor: UIFont.preferredFont(forTextStyle: .body).fontDescriptor.withSymbolicTraits(.traitBold)!, size: 0.0)
        
        var subHeaderTextAttributes = [NSAttributedString.Key: AnyObject]()
        subHeaderTextAttributes[.font] = UIFont.preferredFont(forTextStyle: .body)
        subHeaderTextAttributes[.foregroundColor] = UIColor.systemGray
        
        let rootString = NSMutableAttributedString(string: "Kevin Flynn", attributes: headerTextAttributes)
        rootString.append(NSAttributedString(string: "\nFebruary 10 • San Francisco ", attributes: subHeaderTextAttributes))

        rootString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, rootString.string.count))
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "globe_icon")
        rootString.append(NSAttributedString(attachment: attachment))
        
        let desiredWidth: CGFloat = 300
        let rect = rootString.boundingRect(with: CGSize(width: desiredWidth, height: CGFloat.greatestFiniteMagnitude), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil)
        
        attachment.bounds = CGRect(x: 0, y: -2, width: rect.height/2, height: rect.height/2)
        
        return rootString
    }
}

class TableViewCellDemo: UITableViewCell {
    
    let stackView = UIStackView()
    let label = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        
        //self.addSubview(label)
        //self.backgroundColor = .systemOrange
        //style()
        //layout()
    }
    
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
    }
    
    func layout() {
        stackView.addArrangedSubview(label)
        
        self.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}


