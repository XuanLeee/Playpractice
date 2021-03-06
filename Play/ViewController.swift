//
//  ViewController.swift
//  Play
//
//  Created by Xuan Li on 2018-11-29.
//  Copyright © 2018 nun8866@gmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //label.frame = CGRect(x: 50, y: 50, width: 200, height: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "He from code"
        view.addSubview(label)
        //create a anchor for the auto layout of the label
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 150).isActive = true
        //Using code to manipulate the UI
        label.font = UIFont.systemFont(ofSize: 150)
        label.minimumScaleFactor = 0.2
        label.adjustsFontSizeToFitWidth = true
        //landscape mood cmd+left or right
        //Button default is white font with no text
        let button = UIButton()
        button.frame = CGRect(x: 10, y: 130, width: 100, height: 30)
        view.addSubview(button)
        
        //Add color and title
        button.setTitleColor(.blue, for: .normal)
        button.setTitle("Taaap", for: .normal)
        //Connect the button with the buttonWasTapped function by using control
        button.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
    }
    
     @objc func buttonWasTapped(){
        label.text = "BUTTON TAPPED"
    }


}

