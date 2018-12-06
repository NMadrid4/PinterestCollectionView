//
//  CollectionViewCell.swift
//  PinterestLayoutTest
//
//  Created by Melanie on 10/24/18.
//

import UIKit
import SkeletonView

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var descuentoView: UIView!
    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        self.containerView.layer.cornerRadius = 5
        self.containerView.layer.masksToBounds  = true
        
//        imagen.showAnimatedSkeleton()
//        nameProductLabel.showAnimatedSkeleton()
//        descuentoView.showAnimatedSkeleton()
//        containerView.showAnimatedSkeleton()
    }
    
//    func hideAnimation() {
//        imagen.hideSkeleton()
//        nameProductLabel.hideSkeleton()
//        [descuentoView, containerView].forEach { (view) in
//            view?.hideSkeleton()
//        }
//    }
    
}
