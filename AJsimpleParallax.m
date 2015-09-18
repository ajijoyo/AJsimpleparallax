//
//  AJsimpleParallax.m
//  AJsimpleParallax
//
//  Created by Rachmad Junaidi on 9/18/15.
//  Copyright (c) 2015 Juicegraph. All rights reserved.
//

#import "AJsimpleParallax.h"

@implementation  UIView(AJsimpleParallax)

-(void)setThisParallax:(UIScrollView *)scroll{
    [self setThisParallax:scroll withTreshold:0.7];
}

-(void)setThisParallax:(UIScrollView *)scroll withTreshold:(CGFloat)percent {
    
    if((scroll.contentOffset.y <= self.frame.size.height) && (scroll.contentOffset.y >= 0.0)){
        CGFloat treshold = scroll.contentOffset.y / self.frame.size.height;
        self.transform = CGAffineTransformMakeTranslation(self.frame.origin.x, (treshold * (self.frame.size.height * 0.7)));
    }else{
        self.transform = CGAffineTransformMakeTranslation(self.frame.origin.x,0);
    }
}


@end
