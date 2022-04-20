//
//  TableViewController.swift
//  swiftui-in-uikit
//
//  Created by Patrick Fuller on 3/7/22.
//

import UIKit
import SwiftUI

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseid", for: indexPath)
        let p = people[indexPath.row]
        cell.textLabel?.text = "\(p.name) is \(p.age) years"
        
        return cell
    }
    
    @IBSegueAction func showDetails(_ coder: NSCoder) -> UIViewController? {
        
        guard let selectedIndex = self.tableView.indexPathForSelectedRow else {
            fatalError("error accesing index for selection")
        }
        
        let detailView = PersonDetailView(person: people[selectedIndex.row])
        return UIHostingController(coder: coder, rootView: detailView)
    }
}

