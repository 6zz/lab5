//
//  DraggableImageView.swift
//  lab5
//
//  Created by Shawn Zhu on 9/23/15.
//  Copyright © 2015 Shawn Zhu. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet var contentView: UIView!
    
    var image: UIImage? {
        get {
            return cardImageView.image
        }
        set {
            cardImageView.image = newValue
        }
    }
    
    var originalCenter: CGPoint!
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    func initSubviews() {
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
    }

    @IBAction func onCardPanGestureRecognizer(sender: UIPanGestureRecognizer) {
        switch sender.state {
        case UIGestureRecognizerState.Began:
            originalCenter = cardImageView.center
            
        case UIGestureRecognizerState.Changed:
            let translation = sender.translationInView(superview)
            
            cardImageView.center = CGPoint(
                x: self.originalCenter.x + translation.x,
                y: self.originalCenter.y + translation.y
            )
            
        case UIGestureRecognizerState.Ended:
            print("ended")
            
        default:
            print("do nothing")
        }

    }
}
