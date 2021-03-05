//
//  RealTimeWeather.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/2.
//

import UIKit


class WeatherLiveCell: UICollectionViewCell{
    
    let labeltitle: [String] = ["体感温度", "湿度", "能见度", "气压", "紫外线", "海拔"]
    let data: [String] = ["18℃", "19％", "22KM", "1017", "最弱", "- m"]
    let Image_name: [String] = [ "wd_windchill", "wd_humidity", "wd_visibility", "wd_barometer", "wd_ultraviolet", "wd_altitude"]

    
    override init(frame:CGRect){
        super.init(frame: frame)
        
        //图片坐标
        let image_point: [CGRect] = [CGRect(x: UIScreen.main.bounds.maxX/6-15, y: 42 , width:30 ,height: 30),
                                     CGRect(x: UIScreen.main.bounds.maxX/2-15, y: 42, width:30 ,height: 30),
                                     CGRect(x: UIScreen.main.bounds.maxX*5/6-15, y: 42, width:30 ,height: 30),
                                     CGRect(x: UIScreen.main.bounds.maxX/6-15, y: 133, width:30 ,height: 30),
                                     CGRect(x: UIScreen.main.bounds.maxX/2-15, y: 133, width:30 ,height: 30),
                                     CGRect(x:UIScreen.main.bounds.maxX*5/6-(23.91/2), y: 133+4, width:23.91 ,height: 22),
                                    ]

        //数据坐标
        let data_point: [CGRect] = [CGRect(x: 0, y: 42 + 30+5 , width:UIScreen.main.bounds.maxX/3 ,height: 18),
                                     CGRect(x: UIScreen.main.bounds.maxX/3, y:image_point[1].minY + image_point[1].height+5 , width:UIScreen.main.bounds.maxX/3 ,height: 18),
                                     CGRect(x: UIScreen.main.bounds.maxX*2/3, y:image_point[2].minY + image_point[2].height+5, width:UIScreen.main.bounds.maxX/3 ,height: 18),
                                     CGRect(x: 0, y:image_point[3].minY + image_point[3].height+5, width: UIScreen.main.bounds.maxX/3 ,height: 18),
                                     CGRect(x: UIScreen.main.bounds.maxX/3, y: image_point[4].minY + image_point[4].height+5, width: UIScreen.main.bounds.maxX/3 ,height: 18),
                                     CGRect(x: UIScreen.main.bounds.maxX*2/3, y: image_point[4].minY + image_point[4].height+5+4, width: UIScreen.main.bounds.maxX/3 ,height: 18),
                                    ]

        //图片名称坐标
        let label_point: [CGRect] = [CGRect(x: 0, y: data_point[0].minY + data_point[0].height+4 , width:UIScreen.main.bounds.maxX/3 ,height: 14),
                                     CGRect(x: UIScreen.main.bounds.maxX/3, y:data_point[1].minY + data_point[1].height+4 , width:UIScreen.main.bounds.maxX/3 ,height: 14),
                                     CGRect(x: UIScreen.main.bounds.maxX*2/3, y:data_point[2].minY + data_point[2].height+4, width: UIScreen.main.bounds.maxX/3 ,height: 14),
                                     CGRect(x: 0, y:data_point[3].minY + data_point[3].height+4, width:UIScreen.main.bounds.maxX/3 ,height: 14),
                                     CGRect(x: UIScreen.main.bounds.maxX/3, y: data_point[4].minY + data_point[4].height+4, width:UIScreen.main.bounds.maxX/3 ,height: 14),
                                     CGRect(x:  UIScreen.main.bounds.maxX*2/3, y: data_point[4].minY + data_point[4].height+4, width:UIScreen.main.bounds.maxX/3 ,height: 14),
                                    ]
        
        
        self.backgroundColor = .white
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 224)
        
        for index in 0..<6{
            
            //图片
            let imageview = UIImageView(frame: image_point[index])
            imageview.image = UIImage(named: Image_name[index])
            
            //数据
            let datalabel = UILabel(frame: data_point[index])
            datalabel.text = data[index]
            datalabel.font = .systemFont(ofSize: 18)
            datalabel.textColor = .black
            datalabel.textAlignment = .center
            
            //图标名称
            let label = UILabel(frame: label_point[index])
            label.text = labeltitle[index]
            label.font = .systemFont(ofSize: 14)
            label.textColor = .gray
            label.textAlignment = .center
        
            self.addSubview(imageview)
            self.addSubview(datalabel)
            self.addSubview(label)
            
        }
        
        //图表中间的线
        //横线
        let viewline = UIView(frame: CGRect(x: UIScreen.main.bounds.maxX/2-345/2, y: 122, width: 345, height: 1))
        viewline.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 0.06)
        
        //竖线
        let viewstand1 = UIView(frame: CGRect(x: UIScreen.main.bounds.maxX/3-0.5, y: label_point[0].maxY+14+9-164/2, width: 1, height: 164))
        viewstand1.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 0.06)
        let viewstand2 = UIView(frame: CGRect(x: UIScreen.main.bounds.maxX*2/3-0.5, y: label_point[0].maxY+14+9-164/2, width: 1, height: 164))
        viewstand2.backgroundColor = .init(red: 0, green: 0, blue: 0, alpha: 0.06)
        
        
        
        
        self.addSubview(viewline)
        self.addSubview(viewstand1)
        self.addSubview(viewstand2)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
