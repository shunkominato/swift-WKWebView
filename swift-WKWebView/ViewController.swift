//
//  ViewController.swift
//  swift-WKWebView
//
//  Created by macbook on 2021/02/15.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var toolBar: UIToolbar!
    var webView = WKWebView()
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator.isHidden = true
        
        webView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height - toolBar.frame.size.height)
        
        view.addSubview(webView)
        
        let url =  URL(string: "https://www.kurashiru.com/")
        let request = URLRequest(url: url!)
        webView.load(request)
    }

    @IBAction func back(_ sender: Any) {
    }
    
    @IBAction func go(_ sender: Any) {
    }
}

