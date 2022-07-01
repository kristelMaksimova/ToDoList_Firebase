//
//  TasksViewController.swift
//  ToDoList_Firebase
//
//  Created by Kristi on 01.07.2022.
//

import UIKit
import Firebase

class TasksViewController: UITableViewController {
    
    
    var user: User!
    var ref: DatabaseReference!
    var tasks = Array<Task>()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let currentUser = Auth.auth().currentUser else { return }
        user = User(user: currentUser)
        ref = DatabaseReference.database().reference(withPath: "")
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 0
    }

    @IBAction func signOutTapped(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "New task", message: "Add new ask", preferredStyle: .alert)
        alertController.addTextField()
        let save = UIAlertAction(title: "Save", style: .default) { _ in
            guard let textField = alertController.textFields?.first, textField.text != ""
            else { return }
            
            let task = Task(title: textField.text, userId: )
    
        }
        let cancel = UIAlertAction(title: "Cancel", style: .default)
        alertController.addAction(save)
        alertController.addAction(cancel)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
}
