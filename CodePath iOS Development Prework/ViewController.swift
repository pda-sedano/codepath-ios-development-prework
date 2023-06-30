//
//  ViewController.swift
//  CodePath iOS Development Prework
//
//  Created by Perrin Alaine-Sedano on 6/29/23.
//
//  The following outside resources helped me develop this app:
//  https://www.youtube.com/watch?v=0LGdXt3fTyI&ab_channel=KamrynOhly (linking with github)
//  https://stackoverflow.com/questions/14890220/xcode-label-text-color-change-by-using-rgb-values (setting text color)
//  https://www.youtube.com/watch?v=llwqcyubnAc&ab_channel=SeanAllen (creating outlet collections)
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var infoLabels: [UILabel]!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let randomColor = changeColor()
        
        for label in infoLabels {
            label.textColor = randomColor
        }
    }
    
    @IBAction func resetColors(_ sender: UIButton) {
        for label in infoLabels {
            label.textColor = .black
        }
        
        view.backgroundColor = .systemBackground
    }
    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
}
