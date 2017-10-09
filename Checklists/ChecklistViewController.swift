//
//  ViewController.swift
//  Checklists
//
//  Created by Ivan Ken Tiu on 09/10/2017.
//  Copyright © 2017 FinalShift Inc. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    let row0Text = "Walk the dog"
    let row1Text = "Brush teeth"
    let row2Text = "Learn iOS development"
    let row3Text = "Soccer pratice"
    let row4Text = "Eat ice cream"
    var row0Checked = false
    var row1Checked = false
    var row2Checked = false
    var row3Checked = false
    var row4Checked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
            var isChecked = false
            
            if indexPath.row == 0 {
                row0Checked = !row0Checked
                isChecked = row0Checked
            }
            if indexPath.row == 1 {
                row1Checked = !row1Checked
                isChecked = row1Checked
            }
            if indexPath.row == 2 {
                row2Checked = !row2Checked
                isChecked = row2Checked
            }
            if indexPath.row == 3 {
                row3Checked = !row3Checked
                isChecked = row3Checked
            }
            if indexPath.row == 0 {
                row4Checked = !row4Checked
                isChecked = row4Checked
            }
            
            if isChecked {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0Text
        } else if indexPath.row == 1 {
            label.text = row1Text
        } else if indexPath.row == 2 {
            label.text = row2Text
        } else if indexPath.row == 3 {
            label.text = row3Text
        } else if indexPath.row == 4 {
            label.text = row4Text
        }
        
        configureCheckmark(for: cell, at: indexPath)
        return cell
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        
        var isChecked = false
        if indexPath.row == 0 {
            isChecked = row0Checked
        } else if indexPath.row == 1 {
            isChecked = row0Checked
        } else if indexPath.row == 2 {
            isChecked = row1Checked
        } else if indexPath.row == 3 {
            isChecked = row2Checked
        } else if indexPath.row == 4 {
            isChecked = row3Checked
        }
        
        if isChecked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}

