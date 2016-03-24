//
//  ViewController.swift
//  FisrtViewBasedProjectInSwift
//
//  Created by Rohit Singh on 29/11/14.
//  Copyright (c) 2014 Rohit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tapGoto2(sender: AnyObject) {
        
        let url = NSURL(string: "http://myrestservice")
        var urlRequest : NSMutableURLRequest = NSMutableURLRequest(URL: url!)
        let dict = ["id":"3"]
        
        urlRequest.allHTTPHeaderFields = dict;
        

        urlRequest.HTTPBody = NSJSONSerialization.dataWithJSONObject(dict, options: nil, error: nil)
        
        //let dict:[String: String] = ["id":"3"]
        
        urlRequest.HTTPMethod = NSString(format: "%@", "POST")
        
                NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) { (respons, data, error) -> Void in
            
            if data.length > 0 && error == nil
            {
                let response:AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableLeaves, error: nil)!
            }
            
        }
        
        
        
        
//        let theRequest = NSURLRequest(URL: url)
//        
//        NSURLConnection.sendAsynchronousRequest(theRequest, queue: nil, completionHandler: {(response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
//            if data.length > 0 && error == nil {
//                let response : AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.fromMask(0), error: nil)
//            }
//        })
        
        
        let view2 = self.storyboard?.instantiateViewControllerWithIdentifier("ViewS2") as ViewC2
        
       
        view2.aStr = "hello";
        
        self.navigationController?.pushViewController(view2, animated: true)
    }
}

