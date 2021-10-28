//
//  ViewController.swift
//  lhw1
//
//  Created by comsoft on 2018. 11. 30..
//  Copyright © 2018년 comsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
   
    
    func loadWebPage(_ url:String){
        let myUrl = URL(string:url)
        let myRequest = URLRequest(url:myUrl!)
        myWebView.loadRequest(myRequest)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myWebView.delegate = self
        loadWebPage("http://blog.naver.com/marywon")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sgChangePage(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loadWebPage("http://blog.naver.com/marywon")
        }
        else if sender.selectedSegmentIndex == 1 {
            loadWebPage("http://cafe.daum.net/IDUiOS")
        }
        else if sender.selectedSegmentIndex == 2 {
            loadWebPage("https://www.youtube.com/channel/UCABMCaQGlZVD6xmG3TSi8HA?view_as=subscriber")
        }
        
    }
    
}

