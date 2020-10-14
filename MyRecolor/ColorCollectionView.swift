//
//  Secret Garden
//
//  Created by cocoji on 2020/08/16.
//  Copyright © 2020年 cocoji. All rights reserved.
//

import UIKit

class ColorCollectionView: UICollectionView {
    //MARK: init
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureView()
    }
    fileprivate func configureView(){
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "ColorCollectionViewCell")
    }
}
