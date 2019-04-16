//
//  XibTableViewCell.swift
//  SwiftCase
//
//  Created by 栗子 on 2018/5/25.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/. All rights reserved.
//

import UIKit

class XibTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLB: UILabel!
    @IBOutlet weak var subNameLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValueCell(dic:NSDictionary){
        nameLB.text = dic .object(forKey: "name") as? String
        subNameLB.text = dic.object(forKey: "subName") as? String
    }
    
    
    
}
