//
//  CustomTableViewCell.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/24.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var nameLB = UILabel()
    var subNameLB = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override  init(style:UITableViewCellStyle,reuseIdentifier:String?){
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        
        nameLB = UILabel.init(frame:CGRect(x: 10, y: 10, width: SCREEN_W-20, height: 20))
        nameLB.textColor = LZRGBA(r: 51, g: 51, b: 51, a: 1)
        nameLB.font      = UIFont.systemFont(ofSize: 16)
        self.addSubview(nameLB)
        nameLB.textAlignment = NSTextAlignment.left
        
        subNameLB = UILabel.init(frame:CGRect(x: 10, y: 35, width: SCREEN_W-20, height: 15))
        subNameLB.textColor = LZRGBA(r: 155, g: 155, b: 155, a: 1)
        subNameLB.font = UIFont.systemFont(ofSize: 14)
        subNameLB.textAlignment = NSTextAlignment.left
        self.addSubview(subNameLB)
    }
    
    func setValueCell(dic:NSDictionary){
        nameLB.text = dic .object(forKey: "name") as? String
        subNameLB.text = dic.object(forKey: "subName") as? String
        
    }
   
    
    
    
}
