//
//  ViewController.swift
//  CustomTransition
//
//  Created by Kirill Pyulzyu on 24.08.2018.
//  Copyright © 2018 KP. All rights reserved.
//

import UIKit

class VCMain: UIViewController {
    
    @IBOutlet weak var btnTapMe: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onBtnTapMeTapped(_ sender: Any) {
        let vcYellow = self.storyboard!.instantiateViewController(withIdentifier: "VCYellow") as! VCYellow
        vcYellow.startFrame = self.btnTapMe.frame;
        self.present(vcYellow, animated: true, completion: nil)
    }
}

