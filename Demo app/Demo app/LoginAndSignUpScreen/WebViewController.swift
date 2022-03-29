//
//  WebViewController.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    //MARK: - Outlet
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet var searchBar: UISearchBar!
    
    //MARK: -View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: Constants.googleUrl) else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
