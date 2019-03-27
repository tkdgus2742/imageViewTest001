//
//  ViewController.swift
//  imageViewTest001
//
//  Created by D7703_11 on 2019. 3. 27..
//  Copyright © 2019년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1
    var isAnimation = false
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageView.image = UIImage(named: "Image1")
        countLabel.text = String(count)
    }
    @IBAction func playBtn(_ sender: Any) {
        print("play")
        //Timer 호출
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        print("pause")
        myTimer.invalidate()
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        print("stop")
        myTimer.invalidate()
        count = 0
        //countLabel.text = String(count)
    }
    
    @objc func doAnimation() {

        if count == 5 {
            count = 1
    }   else {
            count+=1
    }
        alienImageView.image = UIImage(named: "Image\(count)")
        countLabel.text = String(count)
    }
}

