//
//  TaskController.swift
//  Task
//
//  Created by mac-admin on 4/15/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class TaskController {
    
    static let sharedController = TaskController()
    
    var tasks: [Task] = []
    
    func addTask(task: Task) {
        tasks.append(task)
    }
    
    func removeTask(task: Task) {
        if let index = tasks.indexOf(task) {
            tasks.removeAtIndex(index)
        }
    }
    
}