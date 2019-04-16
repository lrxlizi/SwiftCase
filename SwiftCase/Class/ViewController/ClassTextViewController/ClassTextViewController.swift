//
//  ClassTextViewController.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/28.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class ClassTextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Class测试"
        
        if ToolClass.isNullOrNilWithObject(object: "" as AnyObject) {
            print("是空")
        }else{
            print("bu")
        }

        
        let names = ["AT", "AE", "D", "S", "BE"]
        
        let reversed = names.sorted(by: backwards)
        print(reversed)
        
    
        
    }
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
