//
//  TableViewController.swift
//  
//
//  Created by Guilherme Martins on 2018/05/06.
//

import UIKit

let imageName = "bear"
let cellHeight = 100.0
let cellName = "cell"

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellName)
        
        cell.textLabel?.text = "demo"
        cell.detailTextLabel?.text = "10:10 - 21:20 2018/05/09"
        cell.imageView?.image = UIImage(named: imageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(cellHeight)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
