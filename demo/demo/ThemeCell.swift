//
//  ThemeCell.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/4.
//

import UIKit

class ThemeCell: UICollectionViewCell{
    
    let textarr: [String] = ["20","℃","晴","北风  2级","体感 18℃","逆光下的倒影","昌平区","换一张","分享好友","天空有点抑郁，想念阳光","2020年12月25日 农历 三月十七"]
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.layer.cornerRadius = 15
        self.backgroundColor = .white
        
        let imageview = UIImageView(frame: CGRect(x: (self.frame.width-345)/2, y: 0, width: 345, height: 162))
        imageview.image = UIImage(named: "button_small")
        imageview.layer.cornerRadius = 15
        imageview.layer.masksToBounds = true
        self.addSubview(imageview)
        
        let imageview2 = UIImageView(frame: CGRect(x: 10, y: 172, width: 30, height: 30))
        imageview2.image = UIImage(named: "button_up")
        imageview2.layer.cornerRadius = imageview2.frame.height/2
        imageview2.layer.masksToBounds = true
        self.addSubview(imageview2)
        
        
    }
    
    
    
}
