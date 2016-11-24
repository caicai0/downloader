//
//  model.swift
//  Downloader
//
//  Created by liyufeng on 2016/11/22.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

import Foundation

struct loadingModel {
    var url : String
    var localPath : String
    var totalByte : Int64?
    
    init(url:String , localPath:String , totalByte : Int64) {
        self.url = url
        self.localPath = localPath
        self.totalByte = totalByte
    }
    
    func initFromDictionary(dic : Dictionary<String,AnyObject>) -> loadingModel {
        let url = dic["url"]
        let localPath = dic["localPath"]
        let totalByte = dic["totalByte"]
        let model = loadingModel(url: url as! String,localPath: localPath as! String,totalByte: (totalByte?.int64Value)!)
        return model
    }
}

