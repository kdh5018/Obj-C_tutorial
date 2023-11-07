//
//  ViewController.m
//  Obj-C_tutorial
//
//  Created by 김도훈 on 2023/11/06.
//

#import "ViewController.h"
#import "Friend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SEL btnSelector = @selector(onTestBtnClicked:);
    
    [_selectorTestButton addTarget:self action:btnSelector forControlEvents:UIControlEventTouchUpInside];
    
    Friend *createdFriend = [Friend getAFriend];
    
    NSLog(@"createdFriend : %@", [createdFriend nickname]);
    
    Friend *myFriend = [Friend getMyFriend];
    
    NSLog(@"myFriend : %@", [myFriend nickname]);
    
}

- (void)onTestBtnClicked:(UIButton *) sender {
    NSLog(@"name: %@ , btnTitle: %@",
          NSStringFromSelector(_cmd), sender.titleLabel.text);
}



@end
