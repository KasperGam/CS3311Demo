//
//  ScheduleViewController.swift
//  GT Athlete Manger
//
//  Created by Kasper Gammeltoft on 3/31/18.
//  Copyright © 2018 CS 3311 Team 28. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var scheduleTable: UITableView!
    
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scheduleTable.dataSource = self
        scheduleTable.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        
        if self.selectedRow != row {
            self.selectedRow = row
            scheduleTable.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row != self.selectedRow{
            return 40
        } else {
            return 230
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = scheduleTable.dequeueReusableCell(withIdentifier: "scheduleCell") as! ScheduleTableCell
        
        let row = indexPath.row
        
        cell.dateLabel.text = "04/" + String(row+6)
        cell.TitleText.text? = "Treatment Listing"
        
        if row != self.selectedRow{
            cell.editButton.isEnabled = false
            cell.editButton.isHidden = true
        } else {
            cell.editButton.isEnabled = true
            cell.editButton.isHidden = false
        }
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
