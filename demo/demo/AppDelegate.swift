//
//  AppDelegate.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/2.
//

import UIKit


var arry: Array<Any> = []
func function(value1: Int,value2: Int,value3: Int,color: String,constellation: String){
    arry.append(value1)
    arry.append(value2)
    arry.append(value3)
    arry.append(color)
    arry.append(constellation)
}



@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow(frame: UIScreen.main.bounds)
    
    var navigationController: UINavigationController?
    
    let viewcontroller = UIViewController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        navigationController = UINavigationController(rootViewController: viewcontroller)

        viewcontroller.view.backgroundColor = .systemPink

        let button = UIButton(frame: CGRect(x: (UIScreen.main.bounds.width-100)/2, y: (UIScreen.main.bounds.height-100)/2, width: 100, height: 100))
        button.setTitle("点击此处", for: .normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(function), for: .touchUpInside)
        
        viewcontroller.view.addSubview(button)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        
        
        return true
    }

//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }
    
    
    @objc func function(){
        
        navigationController?.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "wd_more_arrow_dark"), style: .plain, target: nil, action: nil)
        
        navigationController?.pushViewController(LiveViewcontroller(), animated: true)
        
        demo.function(value1: 4, value2: 3, value3: 4,color: "粉色",constellation: "白羊座")
        
    }

}

