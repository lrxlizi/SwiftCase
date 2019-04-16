//
//  ToolClass.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/29.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class ToolClass: NSObject {

    //判断是不是为空
  class  func isNullOrNilWithObject(object:AnyObject) -> Bool{
        if  (object is NSNull ) {
            return true
        }else if (object is String ){
            if object as! String == "" || object as! String == "(null)" {
                return true
            }else{
                return false
            }
        }else if (object is NSNumber){
            if object as! NSNumber == 0 {
                return true
            }else{
                return false
            }
        }
        return false
    }
    
    
}
