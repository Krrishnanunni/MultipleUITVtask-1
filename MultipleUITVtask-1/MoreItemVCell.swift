//
//  MoreItemVCell.swift
//  MultipleUITVtask-1
//
//  Created by ADMIN on 15/05/25.
//

import UIKit

class MoreItemVCell: UITableViewCell {
    @IBOutlet weak var ItemName: UILabel!
    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var ItemPrice: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
