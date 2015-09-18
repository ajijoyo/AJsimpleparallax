//
//  ViewController.m
//  AJsimpleParallax
//
//  Created by Rachmad Junaidi on 9/18/15.
//  Copyright (c) 2015 Juicegraph. All rights reserved.
//

#import "ViewController.h"
#import "AJsimpleParallax.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myHeader = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    myHeader.layer.masksToBounds = YES;
    myHeader.image = [UIImage imageNamed:@"cat"];
    myHeader.contentMode = UIViewContentModeScaleAspectFill;
    
    
}
#pragma mark - table
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50 ;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        return  200;
    }
    return 60;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell != nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    if (indexPath.row == 0) {
        cell.contentView.layer.masksToBounds = YES;
        [cell.contentView addSubview:myHeader];
    }else{
        cell.textLabel.text = [NSString stringWithFormat:@"cell at %ld",indexPath.row];
    }
    
    
    return cell;
}

#pragma mark - scroll
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [myHeader setThisParallax:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
