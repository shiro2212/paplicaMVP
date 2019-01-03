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
    let userName = ["小林 宏幸", "山崎 謹二", "坂口 あさ美", "大塚 友美",
                    "茂木 信", "谷川 秀次郎", "石山 芙美", "福島 朋絵"]
    
    
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
        // TODO 複数選択時はこれを使う
        // let selectedItems:[IndexPath] = self.userCardCollection.indexPathsForSelectedItems!
        let count = (self.navigationController?.viewControllers.count)! - 2
        let elvc = self.navigationController?.viewControllers[count] as! EventListViewController
        elvc.selectedUserCard.image = UIImage(named:photos[indexPath.row])
        elvc.userName.text = userName[indexPath.row]
        self.navigationController?.popViewController(animated: true)
    }
}
