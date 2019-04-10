//
//  ViewController.swift
//  Semana04
//
//  Created by Arian Angoma on 22/03/19.
//  Copyright © 2019 angoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(SwipeAction(Swipe:)));
        
        leftSwipe.direction = UISwipeGestureRecognizer.Direction.left;
        
        self.view.addGestureRecognizer(leftSwipe);
    }
    
    override var prefersStatusBarHidden: Bool{
        return true;
    }

}

extension UIViewController {
    @objc func SwipeAction(Swipe: UISwipeGestureRecognizer) {
        switch Swipe.direction.rawValue {
        case 1:
            performSegue(withIdentifier: "goLeft", sender: self)
        case 2:
            performSegue(withIdentifier: "goRight", sender: self)
        default:
            break
        }
    }
}

