//
//  TipCell.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/4.
//

import UIKit

class TipCell:UICollectionViewCell{
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
    
        let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: 70, height: 54))
        imageview.image = UIImage(named: "wd_feedback_dark")
        self.addSubview(imageview)
    
        let label = UILabel(frame: CGRect(x: 72, y: (self.frame.height-16)/2, width: 280, height: 20))
        label.text = "附近有用户刚刚反馈天气“⛈雷阵雨”"
        label.font = .systemFont(ofSize: 16)
        label.tintColor = .black
        label.textAlignment = .left
        self.addSubview(label)
        
//        let imageview2 = UIImageView(frame: CGRect(x: label.frame.maxX+185, y: label.frame.maxY, width: 20, height: 20))
//        imageview2.backgroundColor = .systemPink
//        imageview2.image = UIImage(named: "icon／天气／／面性／多云-白")
//        self.addSubview(imageview2)
        
        let button = UIButton(frame: CGRect(x: self.frame.width-38, y: (self.frame.height-28)/2, width: 28, height: 28))
        let buttonimageview = UIImageView(frame: CGRect(x: self.frame.width-38, y: (self.frame.height-28)/2, width: 28, height: 28))
        buttonimageview.image = UIImage(named: "wd_more_arrow")
        button.setBackgroundImage(buttonimageview.image, for: .normal)
        self.addSubview(button)
        
    
    }
    
}
