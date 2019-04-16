//
//  StringViewController.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/25.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class StringViewController: UIViewController {

    @IBOutlet weak var showLB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.view.backgroundColor = UIColor.white
        
       
    }
    //创建空字符串
   
    @IBAction func newBtn(_ sender: Any) {
        showLB.text = "第一种: var str1 = \" \"  \n 第二种 :var  str2 = String()"
        
    }
    
    //拼接
    @IBAction func jointBtn(_ sender: Any) {
        showLB.text = "第一种:多个字符串变量拼接用 + 来拼接\n  let  str4 = \"hello \"  let  str5 = \"swift \"  let  str6 = str4+str5 print(str6)\n 第二种:字符串变量和常量用+或 +＝来拼接 let  str7 = \"hello \" str7 += \"swift \" print(str7)"
        let  str4 = "hello"
        let  str5 = "swift"
        let  str6 = str4+str5 //字符串变量拼接
        print("str6=\(str6)")
        
        var  str7="hello "
        str7 += "swift" //字符串变量和字符常量拼接可以用+＝ 拼接
        print("str7=\(str7)")
    }
    //是否为空
    @IBAction func isNullBtn(_ sender: Any) {
        showLB.text = " var str3:String =  \" \"  \nif str3.isEmpty { print(\"空 \")} \n else{print(\"不空 \")}"
        
        let  isNullStr = ""
        if isNullStr.isEmpty {
            print("空")
        }else{
            print("不空")
        }
        
        
    }
    //是否相等
    @IBAction func equateBtn(_ sender: Any) {
        
        let str1 = "北京"
        let str2 = "北京天安门"
        if str1 == str2 {
            print("相等")
        }else{
            print("不相等")
        }
        showLB.text = " var str1:String =  \"北京 \"  \nif str1==str2 { print(\"相等 \")} \n else{print(\"不相等 \")}"
        
        
    }
    //是否包含某个前缀
    @IBAction func hasPrefixBtn(_ sender: Any) {
        
         let str1 = "北京"
        if str1.hasPrefix("北") {
            print("包含")
        }else{
            print("不包含")
        }
         showLB.text = "let str1 =  \"北京 \" \n if str1.hasPrefix(\"北\") {\n \"包含 \"}"
    }
    //是否包含某个后缀
    @IBAction func hasSuffixBtn(_ sender: Any) {
        let str1 = "北京"
        if str1.hasSuffix("京") {
            print("包含")
        }else{
            print("不包含")
        }
        
        showLB.text = "let str1:  =  \"北京 \" \n if str1.hasSuffix(\"京\") {\n \"包含 \"}"
        
    }

    //转为大写
    @IBAction func uppercaseBtn(_ sender: Any) {
        
        let str1 = "Beijing"
        let str2 = str1.uppercased()
        print(str2)
        showLB.text = " let str1 = \"Beijing \" \n let str2 = str1.uppercased() \n  print(str2) \n BEIJING"
    }
    //转为小写
    @IBAction func lowercase(_ sender: Any) {
        let str1 = "Beijing"
        let str2 = str1.lowercased()
        print(str2)
        showLB.text = " let str1 = \"Beijing \" \n let str2 = str1.lowercased() \n  print(str2)\n beijing"
    }
    
    @IBAction func forinBtn(_ sender: Any) {
        let str1 = "beijing"
        for a in str1 {
            print(a)
        }
        showLB.text = "let str1 = \"Beijing \"\n for a in str1 {\n print(a)\n} b/e/i/j/i/n/g"
       
        
    }
    
    @IBAction func length(_ sender: Any) {
        let str1 : String = "beijing"
        let length = str1.count  //获取String字符串的长度
        print(length)
        showLB.text = " let str1 : String = \"beijing\"\n let length = str1.count \n print(length) \n length = 7"
        
        for i in 0..<str1.count {
            print(i)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
