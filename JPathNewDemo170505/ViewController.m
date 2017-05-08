//
//  ViewController.m
//  JPathNewDemo170505
//
//  Created by DFD on 2017/5/5.
//  Copyright © 2017年 DFD. All rights reserved.
//

#import "ViewController.h"

static UILabel *label;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    label = self.textLabel;
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self test1];
    [[self class] test2];
}

+ (void)test2{
    label.textColor = [UIColor orangeColor];
}


- (void)test1{
    
    self.textLabel.textColor = [UIColor blueColor];
}
//
//
//- (void)test2{
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
