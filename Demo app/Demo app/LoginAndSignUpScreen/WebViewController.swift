//
//  WebViewController.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        loadWebView(webUrl: "https://www.youtube.com")
        // Do any additional setup after loading the view.
    }
    func loadWebView(webUrl: String){
        guard let url = URL(string: webUrl) else { return }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    func searchingTextOnGoogle(_ text: String) {
        let textComponents = text.components(separatedBy: " ")
        let searchText = textComponents.joined(separator: "+")
        loadWebView(webUrl: "https://www.google.com/search?q=" + searchText)
     }
}

extension WebViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let webUrl = searchBar.text?.lowercased()
        loadWebView(webUrl: webUrl ?? "")
    }
}
