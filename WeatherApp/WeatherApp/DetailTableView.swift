//
//  DetailTableView.swift
//  WeatherApp
//
//

import UIKit

class DetailTableView: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var maxDegree: UILabel!
    @IBOutlet weak var minDegree: UILabel!
    @IBOutlet weak var dayIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
