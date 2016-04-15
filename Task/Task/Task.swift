//
//  Task.swift
//  Task
//
//  Created by mac-admin on 4/15/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Task: NSObject {
    
    var name: String
    var dueDate: String
    var isComplete: Bool?
    var notes: String
    
    init(name: String, dueDate: String, isComplete: Bool? = nil, notes: String) {
        self.name = name
        self.dueDate = dueDate
        self.isComplete = isComplete
        self.notes = notes
        
    }
    
    
}

func ==(lhs:Task, rhs: Task) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}