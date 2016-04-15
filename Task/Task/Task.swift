//
//  Task.swift
//  Task
//
//  Created by mac-admin on 4/15/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Task {
    
    var name: String
    var dueDate: NSDate
    var isComplete: Bool
    var notes: String
    
    init(name: String, dueDate: NSDate = NSDate(), isComplete: Bool, notes: String) {
        self.name = name
        self.dueDate = dueDate
        self.isComplete = isComplete
        self.notes = notes
        
    }
    
    
}