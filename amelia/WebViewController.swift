//
//  WebViewController.swift
//  amelia
//
//  Created by Justin Lindberg on 9/15/19.
//  Copyright © 2019 Justin Lindberg. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKNavigationDelegate {
    
    
    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        let webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
        if let url = URL(string: "https://weather.com/weather/tenday/l/Chicago+IL+USIL0225:1:US"){
            let request = URLRequest(url: url)
        webView.load(request)
            
            func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
                title = webView.title
            }
    }
        
    // WEB VIEW SZNNNNNNNNNNNN
    

        
        // Do any additional setup after loading the view.
    }

}
