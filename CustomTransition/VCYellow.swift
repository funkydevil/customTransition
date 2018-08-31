//
//  VCSecondary.swift
//  CustomTransition
//
//  Created by Kirill Pyulzyu on 24.08.2018.
//  Copyright © 2018 KP. All rights reserved.
//

import UIKit

class VCYellow: UIViewController {
    var startFrame: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.modalPresentationStyle = .custom
        self.transitioningDelegate = self
    }
    
    @IBAction func onBtnCloseTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension VCYellow: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimatorPresent(startFrame: self.startFrame)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return AnimatorDismiss(endFrame: self.startFrame)
    }
}
