//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Ivan Ken Tiu on 09/10/2017.
//  Copyright © 2017 FinalShift Inc. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
