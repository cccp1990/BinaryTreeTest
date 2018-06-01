//
//  BinaryTree.m
//  binarytreetest
//
//  Created by admin on 2018/5/31.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree

- (BinaryTree *)initBinaryTreeByArray:(NSArray *)array {
    self = [super init];
    if (self) {
        self.rootNode = nil;
        for (int i = 0; i < array.count; i++) {
            NSInteger value = [array[i] integerValue];
            _rootNode = [BinaryTree addNode:_rootNode value:value];
        }
    }
    
    return self;
}

+ (BinaryTreeNode *)addNode:(BinaryTreeNode *)node value:(NSInteger)value {
    if (!node) {
        node = [[BinaryTreeNode alloc] init];
        node.value = value;
    } else {
        if (value >= node.value) {
            node.rightNode = [BinaryTree addNode:node.rightNode value:value];
            printf("\n%ld to right\n", value);
        } else {
            node.leftNode = [BinaryTree addNode:node.leftNode value:value];
            printf("\n%ld to left\n", value);
        }
    }
    
    return node;
}

+ (void)preOrderBinaryTree:(BinaryTree *)tree {
    preOrderBinaryTreeNode(tree.rootNode);
    printf("\n");
}

static void preOrderBinaryTreeNode(BinaryTreeNode *node) {
    if (node) {
        printf("%ld ", node.value);
    }
    
    if (node.leftNode) {
        preOrderBinaryTreeNode(node.leftNode);
    }
    
    if (node.rightNode) {
        preOrderBinaryTreeNode(node.rightNode);
    }
}

+ (void)inOrderBinaryTree:(BinaryTree *)tree {
    if (tree.rootNode) {
        inOrderBinaryTreeNode(tree.rootNode);
        printf("\n");
    } else {
        printf("\nempty tree\n");
    }
}

static void inOrderBinaryTreeNode(BinaryTreeNode *node) {
    if (node.leftNode) {
        inOrderBinaryTreeNode(node.leftNode);
    }
    
    printf("%ld ", node.value);
    
    if (node.rightNode) {
        inOrderBinaryTreeNode(node.rightNode);
    }
}

+ (void)postOrderBinaryTree:(BinaryTree *)tree {
    if (tree.rootNode) {
        postOrderBinaryTreeNode(tree.rootNode);
    } else {
        printf("\nempty tree\n");
    }
}

static void postOrderBinaryTreeNode(BinaryTreeNode *node) {
    if (node) {
        if (node.leftNode) {
            postOrderBinaryTreeNode(node.leftNode);
        }
        
        if (node.rightNode) {
            postOrderBinaryTreeNode(node.rightNode);
        }
        
        printf("%ld ", node.value);
    }
}
+ (void)destroyBinaryTree:(BinaryTree *)tree {
    if (tree.rootNode) {
        if (tree.rootNode.leftNode) {
            destroyBinaryTreeNode(tree.rootNode.leftNode);
        }
        
        if (tree.rootNode.rightNode) {
            destroyBinaryTreeNode(tree.rootNode.rightNode);
        }
        tree.rootNode = nil;
    }
    printf("destroyed");
}


static void destroyBinaryTreeNode(BinaryTreeNode *node) {
    if (node) {
        NSLog(@"%ld %p", node.value, node);
        if (node.leftNode) {
            destroyBinaryTreeNode(node.leftNode);
        }
        
        if (node.rightNode) {
            destroyBinaryTreeNode(node.rightNode);
        }
        
        node = nil;
    }
}

+ (BinaryTree *)invertBinaryTree:(BinaryTree *)tree {
    if (tree.rootNode) {
        invertNode(tree.rootNode);
    }
    
    return tree;
}

static void invertNode(BinaryTreeNode *node) {
    if (node) {
        BinaryTreeNode *tempNode = node.leftNode;
        node.leftNode = node.rightNode;
        node.rightNode = tempNode;
        tempNode = nil;
        invertNode(node.leftNode);
        invertNode(node.rightNode);
    }
}

+ (void)levelOrderBinaryTree:(BinaryTree *)tree {
    if (tree.rootNode) {
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
        [array addObject:tree.rootNode];
        while (array.count > 0) {
            BinaryTreeNode *node = array[0];
            printf("%ld ", node.value);
            [array removeObjectAtIndex:0];
            if (node.leftNode) {
                [array addObject:node.leftNode];
            }
            
            if (node.rightNode) {
                [array addObject:node.rightNode];
            }
        }
    } else {
        printf("\nempty\n");
    }
}
@end
