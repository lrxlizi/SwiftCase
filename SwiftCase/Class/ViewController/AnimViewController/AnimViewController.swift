//
//  AnimViewController.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/29.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class AnimViewController: UIViewController {
    var btn = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    
        btn = UIButton.init(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        btn.backgroundColor = LZRGBA(r: 77, g: 77, b: 99, a: 1)
        self.view .addSubview(btn)
        btn.addTarget(self, action: #selector(btnAction), for: UIControlEvents.touchUpInside)
        btn.addTarget(self, action: #selector(clicked), for: UIControlEvents.touchDown)
        
    }

    @objc func btnAction() {
        print("=====")
    }
   
    @objc func clicked(){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
