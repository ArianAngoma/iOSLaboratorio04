//
//  InternetViewController.swift
//  Semana04
//
//  Created by Arian Angoma on 22/03/19.
//  Copyright © 2019 angoma. All rights reserved.
//

import UIKit //-> TENER OPCIONES GRAFICAS DE LOS OBJETOS

class InternetViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.raywenderlich.com/35-alamofire-tutorial-getting-started");
        let requestObj = URLRequest(url: url! as URL);
        
        webView.loadRequest(requestObj);
        // Do any additional setup after loading the view.
        
        
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(SwipeAction(Swipe:)));
        
        rightSwipe.direction = UISwipeGestureRecognizer.Direction.right;
        
        self.view.addGestureRecognizer(rightSwipe);
    }
    
    override var prefersStatusBarHidden: Bool{
        return true;
    }
    
    @IBAction func backpressed(sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
}
