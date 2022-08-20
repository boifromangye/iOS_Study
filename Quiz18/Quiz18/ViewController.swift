//
//  ViewController.swift
//  Quiz18
//
//  Created by 권태우 on 2022/08/20.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    let arrUrl = ["www.naver.com", "www.google.com", "www.daum.net", "www.nate.com", "www.cnn.com", "www.realmadrid.com", "www.kakao.com", "www.apple.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerView.delegate = self
        myWebView.navigationDelegate = self
        loadWebPage(url: "https://" + arrUrl[0])
    }
    
    func loadWebPage(url: String){
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }

}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrUrl.count
    }
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myUrl = "https://" + arrUrl[row]
        loadWebPage(url: myUrl)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myUrl = arrUrl[row]
        return myUrl
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
