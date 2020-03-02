//
//  ColorsViewController.swift
//  Colors
//
//  Created by Ryan Filkins on 3/2/20.
//  Copyright © 2020 Ryan Filkins. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let colorNames = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colorNames[indexPath.row]
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
}
