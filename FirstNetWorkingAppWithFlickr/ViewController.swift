//
//  ViewController.swift
//  FirstNetWorkingAppWithFlickr
//
//  Created by 고상범 on 2018. 7. 23..
//  Copyright © 2018년 고상범. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var getAPIPhotoButton: UIButton!
    @objc func APIButtonPressed() {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        UISetiing()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func UISetiing() {
        
        self.titleLabel = {
            let label: UILabel = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(label)
            label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 30).isActive = true
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            label.text = "Cute Cats"
            
            return label
        }()
        
        self.imageView = {
            let imageView: UIImageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(imageView)
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
            imageView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 16).isActive = true
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
            imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
            imageView.contentMode = .scaleAspectFit
            return imageView
            
        }()
        
        self.getAPIPhotoButton = {
            let button: UIButton = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(button)
            button.backgroundColor = UIColor.white
            button.setTitleColor(UIColor.blue, for: UIControlState.normal)
            button.setTitle("GET API IMAGE!", for: UIControlState.normal)
            button.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 16).isActive = true
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            button.addTarget(self, action: #selector(APIButtonPressed), for: UIControlEvents.touchUpInside)
            return button
        }()
        
    }
    

}

