//
//  ViewController.h
//  AJsimpleParallax
//
//  Created by Rachmad Junaidi on 9/18/15.
//  Copyright (c) 2015 Juicegraph. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
{
    IBOutlet __weak UITableView *myTable;
    UIImageView *myHeader;
}

@end

