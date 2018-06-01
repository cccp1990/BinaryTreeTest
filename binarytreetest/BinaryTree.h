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

//构建二叉树
- (BinaryTree *)initBinaryTreeByArray:(NSArray *)array;
//先序遍历
+ (void)preOrderBinaryTree:(BinaryTree *)tree;
//中序遍历
+ (void)inOrderBinaryTree:(BinaryTree *)tree;
//后序遍历
+ (void)postOrderBinaryTree:(BinaryTree *)tree;
//层序遍历
+ (void)levelOrderBinaryTree:(BinaryTree *)tree;
//销毁二叉树
+ (void)destroyBinaryTree:(BinaryTree *)tree;
//翻转二叉树-递归
+ (BinaryTree *)invertBinaryTree:(BinaryTree *)tree;

@end
