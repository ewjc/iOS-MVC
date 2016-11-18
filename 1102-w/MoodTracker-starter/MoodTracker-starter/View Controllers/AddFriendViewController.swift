//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    // MARK: Variables
    var friendsVC: FriendsTableViewController!
  
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moodSelector: UISegmentedControl!
    
  // MARK: View Controller Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  // MARK: Actions
  
  @IBAction func saveButtonPressed(_ sender: AnyObject) {
    


    let name = nameTextField.text
    var mood: Mood!
    
    switch moodSelector.selectedSegmentIndex {
    case 0: mood = Mood.happy
    case 1: mood = Mood.medium
    case 2: mood = Mood.angry
    default: mood = Mood.happy
        
    }
    
    let friend = Friend(name: name!, mood: mood)
    friendsVC.newFriend(friend: friend)
    
    dismissViewController()
        }
    
  @IBAction func cancelButtonPressed(_ sender: AnyObject) {
    dismissViewController()
  }
  
  
  // MARK: Helpers
  
  func dismissViewController() {
    presentingViewController?.dismiss(animated: true)
  }
  
}
