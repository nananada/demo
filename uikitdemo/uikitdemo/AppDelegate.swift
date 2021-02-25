//
//  AppDelegate.swift
//  uikitdemo
//
//  Created by jiaqi.liang on 2021/2/24.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate, UITabBarControllerDelegate, UINavigationControllerDelegate {
    
    let viewController = ViewController()

      var window: UIWindow? =  UIWindow(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height))
    
     

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        


////        view1.view.backgroundColor = .brown
//        navicontro.tabBarItem.title = "微信"
//
////        //view1.tabBarItem.image = UIImage(named: "button01")
//
//        let view2 = UIViewController()
//        view2.view.backgroundColor = .systemPink
//        view2.tabBarItem.title = "通讯录"
//        //view2.tabBarItem.image = UIImage(named: "button02")
//
//        let view3 = UIViewController()
//        view3.view.backgroundColor = .yellow
//        view3.tabBarItem.title = "朋友圈"
//        //view3.tabBarItem.image = UIImage(named: "button03")
//
//        let view4 = UIViewController()
//        view4.view.backgroundColor = .blue
//        view4.tabBarItem.title = "我的"
//        //view4.tabBarItem.image = UIImage(named: "button04")
//
//
//        let tabbar = UITabBarController()
//        tabbar.tabBar.backgroundColor = .yellow
//        tabbar.setViewControllers([navicontro,view2,view3,view4], animated: false)
//
//        self.window?.rootViewController = tabbar
//        self.window?.makeKeyAndVisible()
        
        
//                //将这些变量变成ViewController的，再通过setViewControllers显示
//                viewController.view.backgroundColor = .systemPink
//                viewController.tabBarItem.title = "微信"
//
//                let view2 = UIViewController()
//                view2.view.backgroundColor = .systemPink
//                view2.tabBarItem.title = "通讯录"
//
//                let view3 = UIViewController()
//                view3.view.backgroundColor = .yellow
//                view3.tabBarItem.title = "朋友圈"
//
//                let view4 = UIViewController()
//                view4.view.backgroundColor = .blue
//                view4.tabBarItem.title = "我的"
//
//
//                let tabbar = UITabBarController()
//                tabbar.tabBar.backgroundColor = .yellow
//        //将UIViewcontroller的界面加入tabbar的setViewControllers函数中显示
//                tabbar.setViewControllers([viewController,view2,view3,view4], animated: false)
//
//                tabbar.delegate = self
//
//
//                //让NavigationController的根ViewController为tabbar
 //               let navicontro = UINavigationController(rootViewController: tabbar)
        let navicontro = UINavigationController(rootViewController: ViewController())
//
//                //让window的根ViewController为NavigationController
//                self.window?.rootViewController = navicontro
        self.window?.rootViewController = navicontro
                self.window?.makeKeyAndVisible()
        
        
        return true
    }
    
    
    
//    //shouldviewcontroller的作用是当该函数返回true的时候，可以点击tabbar切换ViewController并执行该函数中的逻辑；当该函数返回false的时候点击tabbar无法切换ViewController，但可以执行函数中的逻辑
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool{
//       print("tabbbar--shouldeselectviewcontroller")
//        return true
//    }
//
//    
//    //didselectviewcontroller作用是在该函数里编写逻辑，当点击tabbar切换ViewController的时候会执行该逻辑
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController){
//        print("tabbbar--didselectviewcontroller ")
//        
//    }
    
        
}


