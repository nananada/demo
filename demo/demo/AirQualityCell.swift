//
//  AirQuality.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/3.
//

import UIKit


class AirQualityCell: UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        self.backgroundColor = .white
        
        
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 10, width: 28, height: 28))
        let buttonimageview = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 10, width: 28, height: 28))
        buttonimageview.image = UIImage(named: "wd_more_arrow")
        button.setBackgroundImage(buttonimageview.image, for: .normal)


        let label1 = UILabel(frame: CGRect(x: 5+92/2-92/2, y: 15, width: 92, height: 18))
        label1.text = "空气质量"
        label1.textColor = .black
        label1.textAlignment = .center
        label1.font = .boldSystemFont(ofSize: 18)

        let label2 = UILabel(frame: CGRect(x: 102, y: 71, width: 70, height: 16))    //文本大小不够，不足以容纳字体
        label2.text = "空气优"
        label2.textColor = .black         //.init()字体不变色
        label2.textAlignment = .left
        label2.font = .boldSystemFont(ofSize: 16)

        let label3 = UILabel(frame: CGRect(x: 102, y: 94, width: 258, height: 40))
        label3.text = "易感染人群症状有轻度加剧,健康人群出现刺激症状"
        label3.textColor = .gray
        label3.textAlignment = .justified
        //让label换行要设定行数
        label3.numberOfLines = 2
        label3.font = .boldSystemFont(ofSize: 14)


        let imageview = UIImageView(frame: CGRect(x: 5, y: 57, width: 92, height: 96))
        imageview.image = UIImage(named: "wd_AQI_good")

        let view = UIView(frame: CGRect(x: 0, y: 48, width: UIScreen.main.bounds.width, height: 1))
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06)
        

        let label4 = UILabel(frame: CGRect(x: 5+92/2-40/2, y: 80, width: 40, height: 24))
        label4.text = "68"
        label4.textColor = .white
        label4.textAlignment = .center
        label4.font = .boldSystemFont(ofSize: 24)


        let label5 = UILabel(frame: CGRect(x: 5+92/2-60/2, y: 108, width: 60, height: 10))
        label5.text = "空气质量"
        label5.textColor = .white
        label5.textAlignment = .center
        label5.font = .boldSystemFont(ofSize: 10)


        self.addSubview(label1)
        self.addSubview(label2)
        self.addSubview(label3)

        self.addSubview(imageview)

        self.addSubview(label4)
        self.addSubview(label5)
        self.addSubview(view)
        self.addSubview(buttonimageview)
        self.addSubview(button)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
        
    
