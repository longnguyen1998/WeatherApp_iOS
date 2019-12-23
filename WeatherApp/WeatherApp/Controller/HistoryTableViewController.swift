//
//  HistoryTableViewController.swift
//  WeatherApp
//
//  Created by Nguyễn Đình Thành Long on 12/23/19.
//  Copyright © 2019 Yusuf Özgül. All rights reserved.
//

import UIKit
import SwiftyJSON

class HistoryTableViewController: UITableViewController {

    var historys = appDelegate.modeCitys
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "HistoryCell", bundle: nil), forCellReuseIdentifier: "HistoryID")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.historys = appDelegate.modeCitys
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return historys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryID") as! HistoryTableViewCell
        cell.bind(model: historys[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteCity(modeSearchCity: historys[indexPath.row])
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let vc = sb.instantiateViewController(withIdentifier: "WeatherDetail") as? WeatherDetail{
            vc.model = historys[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    private func deleteCity(modeSearchCity: ModeSearchCity) {
        if let index = appDelegate.modeCitys.firstIndex(where: { $0.key == modeSearchCity.key}) {
            appDelegate.modeCitys.remove(at: index)
            self.historys = appDelegate.modeCitys
            UserDefaults.standard.setLocations(appDelegate.modeCitys, forKey: "modeCitys")
        }
    }

}
