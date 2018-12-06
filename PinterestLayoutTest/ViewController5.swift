//
//  ViewController5.swift
//  PinterestLayoutTest
//
//  Created by Melanie on 10/30/18.
//

import UIKit

class ViewController5: UIViewController {
    
    
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var customViewBottonConstraint: NSLayoutConstraint!
    @IBOutlet weak var blurView: UIView!
    
    private var isCustomViewShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func showViewAction(_ sender: Any) {
        
        if isCustomViewShowing == false {
            self.blurView.isHidden = false
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.customViewBottonConstraint.constant = 0
                self.view.layoutIfNeeded()
            }, completion: nil)
            isCustomViewShowing = true
        }else {
            UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseIn, animations: {
                self.customViewBottonConstraint.constant = -self.customView.frame.size.height
                self.view.layoutIfNeeded()
            }, completion: nil)
            isCustomViewShowing = false
        }
    }

}
