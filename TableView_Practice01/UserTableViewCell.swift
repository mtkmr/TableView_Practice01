//
//  UserTableViewCell.swift
//  TableView_Practice01
//
//  Created by Masato Takamura on 2021/01/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    
    func setupCell(name: String, date: String, age: Int){
        nameLabel.text = name
        dateLabel.text = date
        ageLabel.text = String(age)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
