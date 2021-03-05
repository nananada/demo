//
//  CollectionView.swift
//  demo
//
//  Created by jiaqi.liang on 2021/3/3.
//

import UIKit

var idarr: [String] = ["cell0", "cell1", "cell2", "cell3", "cell4", "cell5", "cell6"]
//var idarr: [UICollectionViewCell] = [, "WeatherLiveCell", "AirQualityCell",  ,  ,  ]

class LiveViewcontroller: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    let collectionview = UICollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), collectionViewLayout:  UICollectionViewFlowLayout())
    let layout = UICollectionViewFlowLayout()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        layout.minimumLineSpacing = 12
        layout.itemSize = CGSize(width: 100, height: 100)
        
        
        collectionview.backgroundColor = .yellow
        //collectionview.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1)
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(ConstellationCell.self, forCellWithReuseIdentifier: "cell6")
        collectionview.register(AroundMomentCell.self, forCellWithReuseIdentifier: "cell5")
        collectionview.register(ForeCastCell.self, forCellWithReuseIdentifier: "cell3")
        collectionview.register(TipCell.self, forCellWithReuseIdentifier: "cell4")
        collectionview.register(AirQualityCell.self, forCellWithReuseIdentifier: "cell2")
        collectionview.register(WeatherLiveCell.self, forCellWithReuseIdentifier: "cell1")
        collectionview.register(ThemeCell.self, forCellWithReuseIdentifier: "cell0")
        self.view.addSubview(collectionview)
        
        
        
    }
    
    //section的数目
    func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 1
    }
    
    //section中的item的数目
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return idarr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: UICollectionViewCell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
        
        if indexPath.row == 2 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
        }else if indexPath.row == 0 {
            cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell0", for: indexPath)
        }else if indexPath.row == 1  {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath)
        }else if indexPath.row == 3 {
            cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath)
        }else if indexPath.row == 4 {
            cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath)
        }
        else if indexPath.row == 5 {
            cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath)
        }else{
            cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        switch indexPath.item{
        case 0:
            layout.itemSize = CGSize(width: 345, height: 285)
            
        case 1:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 224)
            
        case 2:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 156)
        case 3:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 283)
        case 4:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 54)
        case 5:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 1079)
        case 6:
            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 403)
        default:
            print("cellitem出现错误")
        }
        return layout.itemSize
    }
    
}



