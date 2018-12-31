//
//  SelectUserCardViewController.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class SelectUserCardViewController: UICollectionViewController {
//    let userCard:Int = 1
//    var collectionView = UserCardViewCell.class
    
    @IBOutlet var cardCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // cellの数を返す関数
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    // cellに情報を入れていく関数
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Identifierが"CollectionViewCell"でCollectionViewCellというクラスのcellを取得
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "userCardViewCell", for: indexPath)
        return cell
    }
    
    // cell選択時に呼ばれる関数
    // 画面遷移先に渡すデータをここで格納する
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Identifierが"Segue"のSegueを使って画面遷移する関数
        performSegue(withIdentifier: "Segue", sender: nil)
    }
    
//    // 画面遷移先のViewControllerを取得し、データを渡す
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "Segue" {
//            let vc = segue.destination as! ViewController
//            vc.receiveColor = giveColor
//            vc.receiveColorName = giveColorName
//        }
//    }
}
