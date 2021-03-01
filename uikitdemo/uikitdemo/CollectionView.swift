//
//  CollectionView.swift
//  uikitdemo
//
//  Created by jiaqi.liang on 2021/2/25.
//

import UIKit

class CollectionView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
 {
    
    let viewcontroller = UIViewController()
    
    var flowLayout = UICollectionViewFlowLayout()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.itemSize = CGSize(width: (UIScreen.main.bounds.width-10)/2, height: 100)
        
        let collection = UICollectionView(frame: UIScreen.main.bounds, collectionViewLayout: flowLayout)
        
        collection.backgroundColor = .white
        
        collection.delegate = self
        collection.dataSource = self
        
        collection.register(ColletionViewCell.self, forCellWithReuseIdentifier: "collectioncell")
        self.view.addSubview(collection)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 200
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
       let  collectioncell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath)
        collectioncell.backgroundColor = .red
        return collectioncell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if indexPath.item % 3 == 0{
            flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 100)
        }
        else{
            flowLayout.itemSize = CGSize(width: (UIScreen.main.bounds.width-10)/2, height: 200)
        }
            return flowLayout.itemSize
    }
    
    
}




class ColletionViewCell: UICollectionViewCell{
    
}
