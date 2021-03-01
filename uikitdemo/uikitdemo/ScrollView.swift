//
//  ScrollView.swift
//  uikitdemo
//
//  Created by jiaqi.liang on 2021/2/26.
//

import UIKit
class ScrollView: UIViewController, UIScrollViewDelegate, UIGestureRecognizerDelegate{
    
    let viewcontroller = UIViewController()
    let scrollview = UIScrollView(frame: UIScreen.main.bounds)
    
    override func viewDidLoad(){
        super.viewDidLoad()
        viewcontroller.view.backgroundColor = .white
        scrollview.backgroundColor = .gray
        scrollview.contentSize = CGSize(width: UIScreen.main.bounds.width*5, height: UIScreen.main.bounds.height)
        var viewarr:[UIView] = []
        var arrcolor:[UIColor] = [.orange, .brown, .black, .red]
        
        
        
        
        
        
        for index in 0..<4{
            let view = UIView(frame: CGRect(x: UIScreen.main.bounds.width*CGFloat(index), y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            view.backgroundColor = arrcolor[index]
            scrollview.addSubview(view)
        }
        scrollview.delegate = self
        scrollview.isPagingEnabled = true
        self.view.addSubview(scrollview)
        
        
        let gestureview = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        gestureview.backgroundColor = .blue
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(function))
        gestureview.addGestureRecognizer(gesture)
        gesture.delegate = self
        gesture.isEnabled = true
        
        self.view.addSubview(gestureview)
        
    }
    
    //滑动
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        //print("屏幕滑动")
        //print("距左上角坐标：（\(scrollView.contentOffset.x)，\(scrollView.contentOffset.y)）")
    }
    
    //开始拖拽
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView){
        //print("屏幕开始拖拽")
    }

    //拖拽结束
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool){
        //print("屏幕拖拽结束")
    }
    
    //拖拽减速
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView){
       //print("屏幕拖拽开始减速")
    }
    
    //拖拽减速停止
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
       //print("屏幕拖拽减速停止")
    }
    
    @objc func function(){
        print("gesture")
    }
    
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool{
        return true
    }

    
}
