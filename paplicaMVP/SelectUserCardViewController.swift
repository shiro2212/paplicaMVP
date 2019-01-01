//
//  SelectUserCardViewController.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class SelectUserCardViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var userCardCollection: UICollectionView!
    // サムネイル画像の名前
    let photos = ["Man56", "OldMan84","OldWoman96","Woman69",
                  "YoungMan31","YoungMan32","YoungWoman40","YoungWoman42"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO 複数選択時はこれをtrueにする
        //self.userCardCollection.allowsMultipleSelection = true
    }
    
    // cellの数を返す関数
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    // cellに情報を入れていく関数
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:UICollectionViewCell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "userCardViewCell",
                                               for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = UIImage(named: photos[indexPath.row])
        imageView.image = cellImage
        
        // TODO 背景青ではなくチェックマークなどにする
        // let selectedBGView = UIView(frame: cell.frame)
        // selectedBGView.backgroundColor = .blue
        // cell.selectedBackgroundView = selectedBGView
        
        return cell
    }
    
    // Screenサイズに応じたセルサイズを返す
    // UICollectionViewDelegateFlowLayoutの設定が必要
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 横方向のスペース調整
        let horizontalSpace:CGFloat = 2
        let cellSize:CGFloat = self.userCardCollection.bounds.width/2 - horizontalSpace
        // 正方形で返すためにwidth,heightを同じにする
        return CGSize(width: cellSize, height: cellSize)
    }
    
    // cell選択時に呼ばれる関数
    // 画面遷移先に渡すデータをここで格納する
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedItems:[IndexPath] = self.userCardCollection.indexPathsForSelectedItems!
        
        print("it was tapped! : \(selectedItems)")
        self.navigationController?.popViewController(animated: true)
    }
}
