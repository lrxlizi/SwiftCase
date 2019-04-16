//
//  ViewController.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/24.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView = UITableView()
    var dataSourse = NSArray()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor =  LZRGBA(r: 155, g: 155, b: 155, a: 1)
        
        dateInit()
    }

    func dateInit(){
        
        dataSourse = ["TableViewCell自定义","TableViewCellXib","string","class测试","AnimView"]
        tableView = UITableView.init(frame: CGRect(x: 0, y: 64, width: SCREEN_W, height: SCREEN_H), style: UITableViewStyle.plain)
        self.view .addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate  = self
        tableView.tableFooterView = UIView()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = dataSourse[indexPath.row] as? String
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc = UIViewController()
        if indexPath.row == 0 {
            vc = CustomTabCellViewController()
        }else if (indexPath.row == 1) {
            vc = XIBTableViewCellVC()
        }else if (indexPath.row == 2 ){
            vc = StringViewController()
        }else if (indexPath.row == 3 ){
            vc = ClassTextViewController()
        }else if (indexPath.row == 4){
            vc = AnimViewController()
        }
         self.navigationController?.pushViewController(vc , animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

