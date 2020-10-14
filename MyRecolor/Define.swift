//
//  Secret Garden
//
//  Created by cocoji on 2020/08/16.
//  Copyright © 2020年 cocoji. All rights reserved.
//

import Foundation
import UIKit

let windowBounds = UIScreen.main.bounds

let colorCollectionColumns = 16
let colorCollectionRows = 6
let colorCellPadding : CGFloat = 3

let appFilePath = (NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]) + "/"

let imageSourcePrefix = "image"
let imageSourceIndexStart = 1
let imageSourceIndexEnd = 16

let paletteViewWidth :CGFloat = 600
let paletteViewHeight:CGFloat = 300
let paletteViewInvisableHeight:CGFloat = 20

struct theme {
    let backgroundColor : UIColor
    let borderLineColor : UIColor
    
    
}
