//
//  CustomTabCellViewController.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/24.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class CustomTabCellViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataSource = NSMutableArray()
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = LZRGBA(r: 155, g: 155, b: 155, a: 1)
        self.title = "自定义cell"
        
        var dic = NSDictionary()
        dataSource = NSMutableArray.init()
        var allName = NSString()
        let name = "我是标题"
        for i in (0..<5) {
            print(i)
            allName = name + "\(i)" as NSString
            dic = ["name":allName,"subName":"我是子标题"]
            dataSource .add(dic)
        }
        
        initDate()
        
    }

   func  initDate(){
    
    tableview = UITableView.init(frame: CGRect(x: 0, y: 64, width: SCREEN_W, height: SCREEN_H-64))
    tableview.backgroundColor = UIColor.white
    self.view.addSubview(tableview)
    tableview.delegate = self
    tableview.dataSource = self
    tableview.tableFooterView = UIView.init()
   
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellID") as? CustomTableViewCell
        if cell == nil {
            cell = CustomTableViewCell.init(style: .default, reuseIdentifier: "cellID")
        }
        cell?.setValueCell(dic: self.dataSource[indexPath.row] as! NSDictionary)
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        return cell!

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
