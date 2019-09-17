//
//  ViewController.swift
//  amelia
//
//  Created by Justin Lindberg on 9/14/19.
//  Copyright © 2019 Justin Lindberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        
        try? URLprotocol.init().makeGETRequest()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}


