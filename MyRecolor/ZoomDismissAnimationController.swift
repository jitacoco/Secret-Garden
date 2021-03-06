//
//  Secret Garden
//
//  Created by cocoji on 2020/08/16.
//  Copyright © 2020年 cocoji. All rights reserved.
//

import UIKit

class ZoomDismissAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    var cell: ImageCollectionViewCell!
    var originFrame, finalFrame : CGRect!
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.8
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let fromVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.from) as? PaintingViewController,
            let toVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey.to) as? MainViewController else {
                return
        }
        let containerView = transitionContext.containerView
        
        let imageView = UIImageView(image: fromVC.imageView.image)

        let snapshot = imageView.snapshotView(afterScreenUpdates: true)
        snapshot?.frame = originFrame
        snapshot?.layer.borderWidth = 10
        snapshot?.layer.borderColor = UIColor.gray.cgColor
        snapshot?.layer.masksToBounds = true
        containerView.addSubview(toVC.view)
        containerView.addSubview(snapshot!)
        toVC.view.alpha = 0
        
        let duration = transitionDuration(using: transitionContext)
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6, options: UIViewAnimationOptions.beginFromCurrentState, animations: {() -> Void in
            snapshot?.frame = self.finalFrame
            snapshot?.layer.borderWidth = 5
            snapshot?.layer.cornerRadius = 10
            }, completion:  nil)
        
        UIView.animate(withDuration: duration, delay: 0, options: UIViewAnimationOptions.beginFromCurrentState, animations: {() -> Void in
            toVC.view.alpha = 1
            }, completion: { _ in
                snapshot?.removeFromSuperview()
                self.cell.alpha = 1
                toVC.albumCollectionView.reloadData()
                transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        })

    }
}
