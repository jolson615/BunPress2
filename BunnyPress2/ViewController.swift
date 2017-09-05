//
//  ViewController.swift
//  BunnyPress2
//
//  Created by Jeffrey L Olson Jr on 7/11/17.
//  Copyright © 2017 Jeffrey L Olson Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bunPic: UIImageView!
    @IBOutlet weak var bunButton: UIButton!
    @IBOutlet weak var bunStatus: UILabel!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bunPress(_ sender: Any) {
        counter += 1
        print("You pet the bun \(counter) times!")
        if counter >= 10 {
            bunStatus.text = "Okay. You're done. Stop petting the bun."
            bunPic.image = #imageLiteral(resourceName: "angry-bunny")
        } else {
            bunStatus.text = "You pet the bun \(counter) times!"
        }
    }

    

}

