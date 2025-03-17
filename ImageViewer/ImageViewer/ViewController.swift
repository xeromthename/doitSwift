//
//  ViewController.swift
//  ImageViewer
//
//  Created by 서세린 on 3/17/25.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 6
    var numImage = 1
    

    @IBOutlet var imgGallery: UIImageView!
    
    @IBOutlet var btnFormer: UIButton!
    @IBOutlet var btnLatter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnFormerImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1){
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named: imageName)
    }
    
    @IBAction func btnLatterImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage){
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgGallery.image = UIImage(named: imageName)
    }
}

