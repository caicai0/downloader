//
//  ViewController.swift
//  Downloader
//
//  Created by liyufeng on 2016/11/21.
//  Copyright © 2016年 liyufeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    var datas: NSMutableArray?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.datas = NSMutableArray()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func add(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "添加任务", message: "填写url", preferredStyle: .alert)
        alert.addTextField { (textfild) in
            textfild.placeholder = "下载地址"
        }
        let sure = UIAlertAction(title: "确定", style: .default, handler:{action in
            //todo 添加
        })
        let cancel = UIAlertAction(title: "取消", style: .cancel, handler:{action in
            
        })
        alert.addAction(sure)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion:nil)
    }
}


extension ViewController : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.datas?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.identifierAtIndex(index: indexPath), for: indexPath)
        self.configureCell(cell: cell, atIndexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = tableView.fd_heightForCell(withIdentifier: self.identifierAtIndex(index: indexPath), configuration: {
            cell in
            self.configureCell(cell: cell as! UITableViewCell, atIndexPath: indexPath)
        })
        return height
    }
    
    func identifierAtIndex(index: IndexPath) -> String {
        return ""
    }
    
    func configureCell(cell: UITableViewCell, atIndexPath indexPath: IndexPath) {
        
    }
}
