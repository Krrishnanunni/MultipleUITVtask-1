//
//  TableViewCell.swift
//  MultipleUITVtask-1
//
//  Created by ADMIN on 15/05/25.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var Item: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
