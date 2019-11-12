//
//  ViewController.swift
//  SwiftTopics
//
//  Created by Brendon Cecilio on 11/12/19.
//  Copyright © 2019 Brendon Cecilio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- Outlets
    @IBOutlet weak var tableView: UITableView!
    
    private var topics = swiftTopics 
    
    // MARK:- ViewController LifeCycles and Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        
        let topic = swiftTopics[indexPath.row]
        
        cell.textLabel?.text = topic
        
        return cell
    }
    
    
}
