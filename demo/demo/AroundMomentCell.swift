//
//  AroundMoment.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/4.
//

import UIKit

class AroundMomentCell: UICollectionViewCell{
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        let view = UIView(frame: CGRect(x: 0, y: 48, width: self.frame.width, height: 1))
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06)
        self.addSubview(view)
        
        let label1 = UILabel(frame: CGRect(x: 5+92/2-92/2, y: 15, width: 92, height: 18))
        label1.text = "身边此刻"
        label1.textColor = .black
        label1.textAlignment = .center
        label1.font = .boldSystemFont(ofSize: 18)
        self.addSubview(label1)
        
        
    }
    
    
    
}
