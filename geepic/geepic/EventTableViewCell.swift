//
//  EventTableViewCell.swift
//  geepic
//
//  Created by Ramon Honorio on 10/17/15.
//  Copyright © 2015 Ramon Honorio. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

  @IBOutlet weak var eventNameOutlet: UILabel!
  @IBOutlet var eventImagesOutlet: [UIImageView]!
  @IBOutlet weak var likeButtonOutlet: UIButton!
  @IBOutlet weak var likesLabelOutlet: UILabel!
  
  // Helpers
  var liked = false
  var numLikes = 0
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  @IBAction func likeAction(sender: AnyObject) {
    if self.liked {
      self.liked = false
      self.likeButtonOutlet.setTitle("<3", forState: .Normal)
      self.numLikes -= 1
    } else {
      self.liked = true
      self.numLikes += 1
      self.likeButtonOutlet.setTitle("</3", forState: .Normal)
    }
    self.updateLikesNumber()
  }
  
  func updateLikesNumber(){
    self.likesLabelOutlet.text = "\(numLikes) likes"
  }

}
