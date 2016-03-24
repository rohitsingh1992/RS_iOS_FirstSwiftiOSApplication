//
//  ViewC2.swift
//  FisrtViewBasedProjectInSwift
//
//  Created by Rohit Singh on 29/11/14.
//  Copyright (c) 2014 Rohit Singh. All rights reserved.
//

import UIKit


class ViewC2: UIViewController {
    var aStr:String?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hello(aStr!);

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hello(name:String )
    {
        println(name)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
    
    @IBAction func tapGotoView1(sender: AnyObject) {
        
            self.navigationController?.popToRootViewControllerAnimated(true)
        
    }

}
