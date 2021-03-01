//
//  ViewController.swift
//  uikitdemo
//
//  Created by jiaqi.liang on 2021/2/24.
//

import UIKit

class ViewController: UIViewController/*, UITableViewDataSource, UITableViewDelegate*/{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let v = UIView(frame: CGRect(x:0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        v.backgroundColor = .purple

        //self.tabBarItem.title = "微信"
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2-50, y:UIScreen.main.bounds.height/2-25, width: 100, height: 50))

        button.setTitle("点击", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.addTarget(self, action: #selector(function), for: .touchUpInside)

        self.view.addSubview(v)
        self.view.addSubview(button)
        
//        let  tableview = UITableView(frame:UIScreen.main.bounds)
//        tableview.dataSource = self
//        tableview.delegate = self
        
//        self.view.addSubview(tableview)
        
        
    }

    @objc func function(){
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        vc.navigationItem.title = "目录"
        //vc.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: nil)
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "右侧标题", style: .plain , target: self, action: nil)
        //vc.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: nil)
        //从一个viewcontrller跳转另一个viewcontroller就会用到该函数
        self.navigationController?.pushViewController(vc, animated: false)
    }

    
//    //下面两个函数是UITableViewDataSource协议里的函数，即dataSourse控制的东西
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return 20
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
//        let tableviewcell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellid")
//        tableviewcell.textLabel?.text = NSString(format: "主标题-\(indexPath.row)"as NSString) as String
//        tableviewcell.detailTextLabel?.text = "副标题"
//        return tableviewcell
//    }

//   // 设置cell的高度
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
//        return 100
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        let vcha = UIViewController()
//        vcha.title = NSString(format: "\(indexPath.row)"as NSString) as String
//        //如果想用NavigationController，就要在AppDelegate里面定义一个UINavigationController，并让self.window.rootUIViewController = UINavigationController,UINavigationController里的rootUIViewController为UIViewController,否则ViewController.swift文件里的UINavigationController是假的空的。
//        self.navigationController?.pushViewController(vcha, animated: true)
////
//    }

        

    
    
}

