//
//  ViewController.swift
//  alienImageAni
//
//  Created by D7703_27 on 2018. 4. 4..
//  Copyright © 2018년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienImage: UIImageView!
    @IBOutlet weak var lblCount: UILabel!
    var index = 0
    var direction = "right"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alienImage.image = UIImage(named: "frame1.png")
        lblCount.text = String(1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btUpdate(_ sender: Any) {
        
        if direction=="right" {
            if index==4 {
                direction = "left"
            }
            index = index+1
        }else{
            if index==2 {
                direction = "right"
            }
            index = index-1
        }
        var imageFile = "frame\(index).png"
        alienImage.image = UIImage(named: imageFile)
        lblCount.text = String(index)
    }
}

