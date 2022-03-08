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
       // searchBar.delegate = self
        guard let url = URL(string: "https://www.google.com") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}

//extension WebViewController: UISearchBarDelegate{
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.text = ""
//        searchBar.showsCancelButton = false
//        // You could also change the position, frame etc of the searchBar
//    }
//}

