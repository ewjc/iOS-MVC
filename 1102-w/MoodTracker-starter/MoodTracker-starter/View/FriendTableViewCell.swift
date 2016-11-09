//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
  
  var friend: Friend? // stores the friend that is displayed in this cell
  
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moodLabel: UIButton!
    
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    print(#line, #function)
    
  }


  

  
  
}
