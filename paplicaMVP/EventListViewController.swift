//
//  EventListViewController.swift
//  paplicaMVP
//
//  Created by shinji nagatomi on 2018/12/31.
//  Copyright © 2018 shinji nagatomi. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // TODO サンプルデータ
    let eventDate = ["2019/01/14(月)"]
    let eventImage = ["Umikaze"]
    let eventTitle = ["うみかぜレンタサイクル"]
    let eventContent = ["チーム新年会"]
    
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
        return eventDate.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = eventListTable.dequeueReusableCell(withIdentifier: "event", for: indexPath)
        // TODO サンプルデータをセットしている処理。差し替える
        setSampleEventList(cell, cellForRowAt:indexPath)
        return cell
    }
    
    /**
     * サンプルデータ表示用
    **/
    func setSampleEventList(_ cell: UITableViewCell, cellForRowAt indexPath: IndexPath){
        let dateLabel = cell.contentView.viewWithTag(1) as! UILabel
        let dateString = eventDate[indexPath.row]
        dateLabel.text = dateString
        let imageView = cell.contentView.viewWithTag(2) as! UIImageView
        let cellImage = UIImage(named: eventImage[indexPath.row])
        imageView.image = cellImage
        let titleLabel = cell.contentView.viewWithTag(3) as! UILabel
        let titleString = eventTitle[indexPath.row]
        titleLabel.text = titleString
        let contentLabel = cell.contentView.viewWithTag(4) as! UILabel
        let contentString = eventContent[indexPath.row]
        contentLabel.text = contentString
    }
}

