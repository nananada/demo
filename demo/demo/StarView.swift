//
//  StarViewConroller.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/5.
//

import UIKit

class StarView: UIView{
    var x: Int = 0
    var y: Int = 0
    var yellow_x: Int = 0
    var yellow_y: Int = 0
    
    var starimageview = [UIImageView](repeating: UIImageView(), count:5)
    var yellowstarimageview = [UIImageView](repeating: UIImageView(), count:5)
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        for index in 0..<5{
        let imageview = UIImageView(frame: CGRect(x: x, y: y, width: 16, height: 16))
            imageview.image = UIImage(named: "star")
            x = x+16
            starimageview[index] = imageview
            self.addSubview(imageview)
            
            let yellowimageview = UIImageView(frame: CGRect(x: yellow_x, y: yellow_y, width: 16, height: 16))
            yellowimageview.image = UIImage(named: "yellowstar")
            yellow_x = yellow_x+16
                yellowstarimageview[index] = imageview
            
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
