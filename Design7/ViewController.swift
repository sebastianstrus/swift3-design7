//
//  ViewController.swift
//  Design7
//
//  Created by Sebastian Strus on 2017-05-01.
//  Copyright © 2017 Sebastian Strus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    @IBOutlet weak var imageView: UIView!
    
    @IBOutlet weak var prevBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor(red: 13/255, green: 199/255, blue: 230/255, alpha: 1).cgColor
        
        prevBtn.layer.cornerRadius = 5
        nextBtn.layer.cornerRadius = 5
        
    }


    @IBAction func button1(_ sender: UIButton) {
        UIView.transition(from: firstView, to: secondView, duration: 0.5, options: [.transitionFlipFromLeft, .showHideTransitionViews])
    }

    @IBAction func button2(_ sender: UIButton) {
        UIView.transition(from: secondView, to: thirdView, duration: 0.5, options: [.transitionCurlUp, .showHideTransitionViews])
    }
    @IBAction func button3(_ sender: UIButton) {
        UIView.transition(from: thirdView, to: firstView, duration: 0.5, options: [.transitionFlipFromBottom, .showHideTransitionViews])
    }
}

