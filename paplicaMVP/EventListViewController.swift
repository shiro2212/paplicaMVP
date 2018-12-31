//
//  EventListViewController.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController {

    @IBOutlet weak var selectedUserCard: UIImageView!
    @IBAction func onTapUserCard(_ sender: UITapGestureRecognizer) {
        print("タップされました！")
        self.performSegue(withIdentifier: "onTapUserCard", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(self.onTapUserCard(_:)))
        selectedUserCard.addGestureRecognizer(tapGesture)
    }

}

