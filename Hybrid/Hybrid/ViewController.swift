//
//  ViewController.swift
//  Hybrid
//
//  Created by 권태우 on 2022/08/20.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var tfUrl: UITextField!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
        loadWebPage(url: "https://www.naver.com")
    }
    
    func loadWebPage(url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        tfUrl.placeholder = url
        myWebView.load(myRequest)
    }
    
    @IBAction func btnGo(_ sender: UIButton) {
        var myUrl = tfUrl.text!
        if !myUrl.starts(with: "https://") {
            myUrl = "https://" + myUrl
        }
        loadWebPage(url: myUrl)
        tfUrl.text?.removeAll()
    }
    
    @IBAction func btnSite1(_ sender: UIButton) {
        // https://www.google.com
        loadWebPage(url: "https://www.google.com")
    }
    
    @IBAction func btnSite2(_ sender: UIButton) {
        // https://www.daum.net
        loadWebPage(url: "https://www.daum.net")
    }
    
    @IBAction func btnHtml(_ sender: UIButton) {
        let htmlString = """
            <html>
                <head>
                    <meta charset = "utf-8">
                    <meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
                </head>
                <body>
                    <h1>HTML String</h1>
                    <p>String변수를 이용한 웹페이지</p>
                    <p><a href = "https://www.kakao.com">카카오</a>로 이동</p>
                </body>
            </html>
        """
        myWebView.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)    }
    
    @IBAction func btnCancel(_ sender: UIBarButtonItem) {
        myWebView.stopLoading()
    }
    
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        myWebView.reload()
    }
    
    @IBAction func btnBackward(_ sender: UIBarButtonItem) {
        myWebView.goBack()
    }
    
    @IBAction func btnForward(_ sender: UIBarButtonItem) {
        myWebView.goForward()
    }
}

extension ViewController: WKNavigationDelegate{
    // Start Indicator
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    // Finish Indicator
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    // Error
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
}
