//
//  ViewController.swift
//  lab5
//
//  Created by Shawn Zhu on 9/23/15.
//  Copyright © 2015 Shawn Zhu. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var draggableImageView: DraggableImageView!
//    @IBOutlet weak var cardImageView: UIImageView!
//    
//    var cardInitialCenter: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//
//    @IBAction func onCardPanRecognizer(sender: UIPanGestureRecognizer) {
//        switch sender.state {
//        case UIGestureRecognizerState.Began:
//            cardInitialCenter = cardImageView.center
//            
//        case UIGestureRecognizerState.Changed:
//            let translation = sender.translationInView(view)
//            
//            cardImageView.center = CGPoint(
//                x: self.cardInitialCenter.x + translation.x,
//                y: self.cardInitialCenter.y + translation.y
//            )
//            
//        case UIGestureRecognizerState.Ended:
//            print("ended")
//
//        default:
//            print("do nothing")
//        }
//    }

}

