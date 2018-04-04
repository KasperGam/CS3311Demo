//
//  HistoryViewController.swift
//  GT Athlete Manger
//
//  Created by Kasper Gammeltoft on 3/31/18.
//  Copyright © 2018 CS 3311 Team 28. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var historyTable: UITableView!
    
    var selectedRow = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        historyTable.dataSource = self
        historyTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        
        if self.selectedRow != row {
            self.selectedRow = row
            historyTable.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row != self.selectedRow{
            return 40
        } else {
            return 320
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = historyTable.dequeueReusableCell(withIdentifier: "historyCell") as! HistoryTableCell
        
        let row = indexPath.row
        
        cell.dateLabel.text = "04/" + String(row+6)
        
        cell.treatmentLabel.text = "Treatment Listing"
        
        cell.studentNameLabel.text = "First Last"
        
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
