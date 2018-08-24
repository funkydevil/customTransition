//
//  ViewController.swift
//  CustomTransition
//
//  Created by Kirill Pyulzyu on 24.08.2018.
//  Copyright © 2018 KP. All rights reserved.
//

import UIKit

class VCMain: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.makeSlides()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeSlides() {
        for i in 0...10 {
            let vSlide = VSlide.xib()
            vSlide.width = self.scrollView.width
            vSlide.height = self.scrollView.height
            vSlide.left = self.scrollView.width * Double(i)
            vSlide.lblText.text = String(i)
            self.scrollView.addSubview(vSlide)
            self.scrollView.contentSize = CGSize(width: vSlide.right, height: self.scrollView.height)
        }
    }

}

