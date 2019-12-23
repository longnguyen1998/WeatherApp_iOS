//
//  HistoryTableViewCell.swift
//  WeatherApp
//
//  Created by Nguyễn Đình Thành Long on 12/23/19.
//  Copyright © 2019 . All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func bind(model: ModeSearchCity) {
        /// update cell
        lblCity.text = model.localizedName
        lblCountry.text = model.country?.localizedName
        
    }

}
