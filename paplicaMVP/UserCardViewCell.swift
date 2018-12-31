//
//  UserCardViewCell.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class UserCardViewCell: UICollectionViewCell {
    
    @IBOutlet weak var userCard: UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
