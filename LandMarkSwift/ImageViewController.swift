//
//  ImageViewController.swift
//  LandMarkSwift
//
//  Created by Bakyt Dzhumabaev on 9/6/21.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedImage
        
        
    }
    



}
