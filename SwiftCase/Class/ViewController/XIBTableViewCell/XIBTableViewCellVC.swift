//
//  XIBTableViewCellVC.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/25.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class XIBTableViewCellVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataSource = NSMutableArray()
    var tableVIew = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.title = "TableViewCellXib"
        initData()
        
        
    }

    func initData(){
        
        dataSource = NSMutableArray.init()
        var dic    = NSDictionary.init()
        let name   = "我是标题"
        var allName = NSString()
        
        for i in 0..<5 {
            allName = name + "\(i)" as NSString
            dic = ["name":allName,"subName":"我是子标题"]
            dataSource .add(dic)
        }
        
        tableVIew = UITableView.init(frame: CGRect(x: 0, y: 64, width: SCREEN_W, height: SCREEN_H))
        self.view.addSubview(tableVIew)
        tableVIew.delegate = self
        tableVIew.dataSource = self
        tableVIew.tableFooterView = UIView.init()
        tableVIew.register(UINib.init(nibName: "XibTableViewCell", bundle:nil), forCellReuseIdentifier:"CELLXIB")
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:XibTableViewCell = tableVIew.dequeueReusableCell(withIdentifier: "CELLXIB") as! XibTableViewCell
        cell.setValueCell(dic: dataSource[indexPath.row] as! NSDictionary)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
