//
//  ViewController.swift
//  package
//
//  Created by 李广斌 on 2020/8/26.
//  Copyright © 2020 www.automaticpackage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var lable: UILabel = {
        let one = UILabel()
        one.text = "Hello World"
        one.translatesAutoresizingMaskIntoConstraints = false
        return one
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lable)
        
        let right = NSLayoutConstraint(item: lable, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 10)
        right.isActive = true
        
        let top = NSLayoutConstraint(item: lable, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 100)
        
        top.isActive = true
    }


}

