//
//  EventListViewController.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var selectedUserCard: UIImageView!
    @IBOutlet weak var eventListTable: UITableView!
    
    @IBAction func onTapUserCard(_ sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "onTapUserCard", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        eventListTable.rowHeight = 180
        let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(self.onTapUserCard(_:)))
        selectedUserCard.addGestureRecognizer(tapGesture)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = eventListTable.dequeueReusableCell(withIdentifier: "event", for: indexPath)
        return cell
    }
}

