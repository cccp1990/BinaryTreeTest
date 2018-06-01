//
//  BinaryTree.h
//  binarytreetest
//
//  Created by admin on 2018/5/31.
//  Copyright © 2018年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinaryTree : NSObject

@property (nonatomic, strong) BinaryTreeNode *rootNode;

- (BinaryTree *)initBinaryTreeByArray:(NSArray *)array;
+ (void)preOrderBinaryTree:(BinaryTree *)tree;
+ (void)inOrderBinaryTree:(BinaryTree *)tree;
+ (void)postOrderBinaryTree:(BinaryTree *)tree;
+ (void)destroyBinaryTree:(BinaryTree *)tree;

@end
