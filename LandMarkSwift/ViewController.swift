//
//  ViewController.swift
//  LandMarkSwift
//
//  Created by Bakyt Dzhumabaev on 8/6/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("AmazonRiver")
        landmarkNames.append("Island")
        landmarkNames.append("Niagara")
        landmarkNames.append("Nile")
        landmarkNames.append("Wall")
        
        
        landmarkImages.append(UIImage(named: "amazonriver.jpg")!)
        landmarkImages.append(UIImage(named: "island.jpg")!)
        landmarkImages.append(UIImage(named: "niagara.jpg")!)
        landmarkImages.append(UIImage(named: "nile.jpg")!)
        landmarkImages.append(UIImage(named: "wall.jpg")!)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
}

