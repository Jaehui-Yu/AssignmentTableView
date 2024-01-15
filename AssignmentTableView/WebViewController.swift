//
//  WebViewController.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/15/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    var link: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: link) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }


}
