//
//  Constellation.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/5.
//

import UIKit

class ConstellationCell: UICollectionViewCell{
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let starview1 = StarView()
    let starview2 = StarView()
    let starview3 = StarView()

    var imageview:UIImageView = {
    let imageview = UIImageView(frame: CGRect(x: 10, y: 47, width: 84, height: 84))
        imageview.image = UIImage(named: "img_星座／狮子座")
      return imageview
    }()
    
    let censtellationlabel: UILabel = {
    let censtellationlabel = UILabel(frame: CGRect(x: 113, y: 67, width: 95, height: 25))
        censtellationlabel.text = "狮子座"
        censtellationlabel.textColor = .black
        censtellationlabel.textAlignment = .left
        censtellationlabel.font = .systemFont(ofSize: 18)
      return censtellationlabel
    }()
    
    let datelabel: UILabel = {
    let datelabel = UILabel(frame: CGRect(x: 175, y: 70, width: 74, height: 18))
        datelabel.text = "07/29-08/30"
        datelabel.textColor = .gray
        datelabel.textAlignment = .center
        datelabel.font = .systemFont(ofSize: 12)
      return datelabel
    }()
    
    let colorlabel: UILabel = {
    let colorlabel = UILabel(frame: CGRect(x: 300, y: 30+146, width: 80, height: 18))
        colorlabel.text = "绿色"
        colorlabel.textColor = .darkGray
        colorlabel.textAlignment = .left
        colorlabel.font = .systemFont(ofSize: 16)
        return colorlabel
    }()
    
    let couplelabel: UILabel = {
    let couplelabel = UILabel(frame: CGRect(x: 300, y: 148+146, width: 80, height: 18))
        couplelabel.text = "摩羯座"
        couplelabel.textColor = .darkGray
        couplelabel.textAlignment = .left
        couplelabel.font = .systemFont(ofSize: 16)
        return couplelabel
    }()

    let startlocateview1 = UIView(frame: CGRect(x: 180, y: 100, width: 16, height: 16))
    let startlocateview2 = UIView(frame: CGRect(x: 100, y: 30+146, width: 16, height: 16))
    let startlocateview3 = UIView(frame: CGRect(x: 100, y: 148+146, width: 16, height: 16))


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        
        let button1 = UIButton(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 10, width: 28, height: 28))
        let buttonimageview1 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 10, width: 28, height: 28))
        buttonimageview1.image = UIImage(named: "wd_more_arrow")
        button1.setBackgroundImage(buttonimageview1.image, for: .normal)
        self.addSubview(button1)
        
        let changebutton = UIButton(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 74, width: 28, height: 28))
        changebutton.addTarget(self, action: #selector(changeconstellation), for: .touchUpInside)
        let buttonimageview2 = UIImageView(frame: CGRect(x: UIScreen.main.bounds.width-38, y: 74, width: 30, height: 30))
        buttonimageview2.image = UIImage(named: "icon_切换星座(1)")
        changebutton.setBackgroundImage(buttonimageview2.image, for: .normal)
        self.addSubview(changebutton)

        let view1 = UIView(frame: CGRect(x: 0, y: 46, width: self.frame.width, height: 1))
        view1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06)
        self.addSubview(view1)
        
        let view2 = UIView(frame: CGRect(x: 0, y: 130, width: self.frame.width, height: 1))
        view2.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06)
        self.addSubview(view2)

        let label1 = UILabel(frame: CGRect(x: 5+92/2-92/2, y: 15, width: 92, height: 18))
        label1.text = "星座运势"
        label1.textColor = .black
        label1.textAlignment = .center
        label1.font = .boldSystemFont(ofSize: 18)
        self.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: 228, y: 15, width: 120, height: 24))
        label2.text = "寻找星座的秘密"
        label2.textColor = .gray
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 16)
        self.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 10, y: 30+146, width: 80, height: 18))
        label3.text = "事业运势"
        label3.textColor = .darkGray
        label3.textAlignment = .center
        label3.font = .systemFont(ofSize: 16)
        self.addSubview(label3)
        
        let label4 = UILabel(frame: CGRect(x: 10, y: 148+146, width: 80, height: 18))
        label4.text = "健康运势"
        label4.textColor = .darkGray
        label4.textAlignment = .center
        label4.font = .systemFont(ofSize: 16)
        self.addSubview(label4)
        
        let label5 = UILabel(frame: CGRect(x: 203, y: 30+146, width: 80, height: 18))
        label5.text = "幸运颜色"
        label5.textColor = .darkGray
        label5.textAlignment = .center
        label5.font = .systemFont(ofSize: 16)
        self.addSubview(label5)
        
        let label6 = UILabel(frame: CGRect(x: 203, y: 148+146, width: 80, height: 18))
        label6.text = "速配星座"
        label6.textColor = .darkGray
        label6.textAlignment = .center
        label6.font = .systemFont(ofSize: 16)
        self.addSubview(label6)
        
        let label7 = UILabel(frame: CGRect(x: 113, y: 100, width: 58, height: 16))
        label7.text = "今日运势"
        label7.textColor = .gray
        label7.textAlignment = .left
        label7.font = .systemFont(ofSize: 14)
        self.addSubview(label7)

        
        
            for index in 0..<starview1.starimageview.count {
                if(index < arry[0] as! Int){
                    if(starview1.starimageview[index].image == UIImage(named: "star")){
                    starview1.starimageview[index].image = UIImage(named: "yellowstar")
                    }
                }else{
                    if(starview1.starimageview[index].image == UIImage(named: "yellowstar")){
                        starview1.starimageview[index].image = UIImage(named: "star")
                    }
                }
            }
            for index in 0..<starview2.starimageview.count {
                if(index < arry[1] as! Int){
                    if(starview2.starimageview[index].image == UIImage(named: "star")){
                    starview2.starimageview[index].image = UIImage(named: "yellowstar")
                    }
                }else{
                    if(starview2.starimageview[index].image == UIImage(named: "yellowstar")){
                        starview2.starimageview[index].image = UIImage(named: "star")
                    }
                }
            }
            for index in 0..<starview3.starimageview.count {
                if(index < arry[2] as! Int){
                    if(starview3.starimageview[index].image == UIImage(named: "star")){
                    starview3.starimageview[index].image = UIImage(named: "yellowstar")
                    }
                }else{
                    if(starview3.starimageview[index].image == UIImage(named: "yellowstar")){
                        starview3.starimageview[index].image = UIImage(named: "star")
                    }
                }
            }
            
        couplelabel.text = arry[3] as! String
        colorlabel.text = arry[4] as! String
        
        
        
        self.addSubview(imageview)
        self.addSubview(censtellationlabel)
        self.addSubview(datelabel)
        startlocateview1.addSubview(starview1)
        self.addSubview(startlocateview1)
        startlocateview2.addSubview(starview2)
        self.addSubview(startlocateview2)
        startlocateview3.addSubview(starview3)
        self.addSubview(startlocateview3)
        self.addSubview(colorlabel)
        self.addSubview(couplelabel)

    }
    
    @objc func changeconstellation(){
        print("点击切换星座按钮")
    }
    
    func  function(){
        print("Hello World")
    }
    

}
