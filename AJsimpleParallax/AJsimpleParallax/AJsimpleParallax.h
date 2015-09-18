//
//  AJsimpleParallax.h
//  AJsimpleParallax
//
//  Created by Rachmad Junaidi on 9/18/15.
//  Copyright (c) 2015 Juicegraph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView(AJsimpleParallax)

//put in scrollViewDidScroll
-(void)setThisParallax:(UIScrollView *)scroll; //put in scrollViewDidScroll
-(void)setThisParallax:(UIScrollView *)scroll withTreshold:(CGFloat)percent;
@end
