//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    static let angryString = "Rinse yourself before entering"
    static let happyString = "PTL"
    static let mediumString = "Yes you may eat and drink"
    
    var friendArray = [
        Friend.init(name: "Matthew", mood: .happy),
        Friend.init(name: "Mark", mood: .happy),
        Friend.init(name: "Luke", mood: .happy),
        Friend.init(name: "John", mood: .happy)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        let friend = friendArray[indexPath.row]
        cell.nameLabel.text = friend.name
        
        switch friend.mood {
        case .happy:
            cell.descriptionLabel?.text = FriendsTableViewController.happyString
            cell.moodLabel.setTitle(Mood.happy.rawValue, for: .normal)
        case .angry:
            cell.descriptionLabel.text = FriendsTableViewController.angryString
            cell.moodLabel.setTitle(Mood.angry.rawValue, for: .normal)
        case .medium:
            cell.descriptionLabel.text = FriendsTableViewController.mediumString
            cell.moodLabel.setTitle(Mood.medium.rawValue, for: .normal)
        }
        
        cell.descriptionLabel.text = FriendsTableViewController.happyString
        cell.moodLabel.setTitle(Mood.happy.rawValue, for: .normal)

        
        return cell
    }
    
}
