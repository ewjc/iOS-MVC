//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    // MARK: Variables
    var friendTableVC: FriendsTableViewController!

    // MARK: IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moodLabel: UIButton!
    
    // MARK: IBActions
    @IBAction func moodButtonPressed(_ sender: UIButton) {
        friendTableVC.updateInfo(index: sender.tag)
    }
    
    
    
}
