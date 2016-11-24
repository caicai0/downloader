//
//  TableViewCell.swift
//  Downloader
//
//  Created by liyufeng on 2016/11/22.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var urlLbl: UILabel!
    @IBOutlet weak var progressview: UIProgressView!
    
    var localModel:NSObject?
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var model: AnyObject? {
        set{
            self.localModel = model as! NSObject?;
            self.updateInfo()
        }
        get{
            return self.localModel
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func updateInfo() {
        
    }
    
}
