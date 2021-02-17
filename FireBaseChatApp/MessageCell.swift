//
//  MessageCell.swift
//  FireBaseChatApp
//
//  Created by 山﨑隼汰 on 2021/02/17.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!

    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
            
        rightImageView.layer.cornerRadius = 25.0
        leftImageView.layer.cornerRadius = 25.0
        backView.layer.cornerRadius = 10
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

