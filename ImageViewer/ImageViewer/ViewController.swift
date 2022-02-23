//
//  ViewController.swift
//  ImageViewer
//
//  Created by Minji Jo on 2022/02/21.
//

import UIKit

class ViewController: UIViewController {
    var maxImage = 3
    var numImage = 1
    
    @IBOutlet var imgViewer: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgViewer.image = UIImage(named: "1.png")
    }

    
    @IBAction func btnPreImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
    
}

