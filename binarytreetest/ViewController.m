//
//  ViewController.m
//  binarytreetest
//
//  Created by admin on 2018/5/31.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "ViewController.h"
#import "BinaryTree.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = @[@8, @5, @99, @4, @10, @3];
    BinaryTree *tree = [[BinaryTree alloc] initBinaryTreeByArray:array];
    [BinaryTree preOrderBinaryTree:tree];
    [BinaryTree inOrderBinaryTree:tree];
    [BinaryTree destroyBinaryTree:tree];
    [BinaryTree inOrderBinaryTree:tree];


    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
