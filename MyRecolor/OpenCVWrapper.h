//
//  Secret Garden
//
//  Created by cocoji on 2020/08/16.
//  Copyright © 2020年 cocoji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OpenCVWrapper : NSObject
+ (UIImage *)floodFill:(UIImage*)inputImage point:(CGPoint)point replacementColor:(UIColor*)replacementColor;
@end
