//
//  NewTaskTableViewController.swift
//  Task
//
//  Created by mac-admin on 4/15/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class NewTaskTableViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dueTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func saveButtonTapped(sender: AnyObject) {
        if let task = task {
            task.name = nameTextField.text ?? ""
            task.dueDate = dueTextField.text ?? ""
            task.notes = notesTextView.text
        } else {
            let newTask = Task(name: self.nameTextField.text ?? "", dueDate: self.dueTextField.text ?? "" , notes: self.notesTextView.text ?? "")
            TaskController.sharedController.addTask(newTask)
        }
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func updateWithTask(task: Task) {
        self.task = task
        self.nameTextField.text = task.name
        self.dueTextField.text = task.dueDate
        self.notesTextView.text = task.notes
    }
}


