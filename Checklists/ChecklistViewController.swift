//
//  ViewController.swift
//  Checklists
//
//  Created by Ivan Ken Tiu on 09/10/2017.
//  Copyright © 2017 FinalShift Inc. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var items: [ChecklistItem]
    
    required init?(coder aDecoder: NSCoder) {
        
        items = [ChecklistItem]()
        
        let row0Item = ChecklistItem()
        row0Item.text = "Walk the dog"
        row0Item.checked = false
        items.append(row0Item)
        
        let row1Item = ChecklistItem()
        row1Item.text = "Brush my teeth"
        row1Item.checked = false
        items.append(row1Item)
        
        let row2Item = ChecklistItem()
        row2Item.text = "Learn iOS development"
        row2Item.checked = false
        items.append(row2Item)
        
        let row3Item = ChecklistItem()
        row3Item.text = "Soccer practice"
        row3Item.checked = false
        items.append(row3Item)
        
        let row4Item = ChecklistItem()
        row4Item.text = "Eat ice icecream"
        row4Item.checked = false
        items.append(row4Item)
        
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            let item = items[indexPath.row]
            item.checked = !item.checked
            
            configureCheckmark(for: cell, at: indexPath)
           
        }
     tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        let item = items[indexPath.row]
        label.text = item.text
        
        configureCheckmark(for: cell, at: indexPath)
        return cell
    }
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        
        let item = items[indexPath.row]
        
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
}

