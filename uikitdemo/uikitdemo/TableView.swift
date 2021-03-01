//
//  UITableView.swift
//  uikitdemo
//
//  Created by jiaqi.liang on 2021/3/1.
//

import UIKit
class TableView: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let tableview = UITableView(frame: UIScreen.main.bounds)
        tableview.backgroundColor = .white
        tableview.dataSource = self
        tableview.delegate = self
        
        self.view.addSubview(tableview)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableviewcell = UITableViewCell(style: .subtitle, reuseIdentifier: "tableviewcell")
        let label1 = UILabel(frame: CGRect(x: 30, y: 1, width: 200, height: 60))
        let label2 = UILabel(frame: CGRect(x: label1.frame.origin.x+20, y: 60, width: 100, height: 50))
        let label3 = UILabel(frame: CGRect(x: 150, y: 60, width: 60, height: 50))
        label1.text = "主标题"
        label2.text = "副标题"
        label3.text = "副标题"
        label1.font = .systemFont(ofSize: 32)
        tableviewcell.addSubview(label1)
        tableviewcell.addSubview(label2)
        tableviewcell.addSubview(label3)
        
        let imageview = UIImageView(frame: CGRect(x: 250, y: 4, width: 100, height: 100))
        imageview.backgroundColor = .systemPink
        let imagenamearr:[String] = ["button01", "button02", "button03", "button04"]
        var imagearr:[UIImage] = []    //数组要么用append()的方式添加元素，要么初始化定义数组大小，用直接赋值的方法不保险
        for index in 0..<4{
            var image = UIImage(named: imagenamearr[index])
            imagearr.append(image!)
        }
        imageview.animationImages = imagearr
        imageview.animationDuration = 3
        imageview.startAnimating()
        tableviewcell.addSubview(imageview)
        
        return tableviewcell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 110
    }
    
    
}
