//
//  TableViewCell.swift
//  Downloader
//
//  Created by liyufeng on 2016/11/22.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,model {

    @IBOutlet weak var urlLbl: UILabel!
    @IBOutlet weak var progressview: UIProgressView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
