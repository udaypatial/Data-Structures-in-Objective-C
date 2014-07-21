//
//  BinaryTree.m
//  iBinaryTree
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

-(void) insertNode:(NSObject*)data{
    BinaryTreeNode *temp = [[BinaryTreeNode alloc] init];
    temp.data = data;
    temp.left = nil;
    temp.right = nil;
    BinaryTreeNode *cur = self.root;
    BinaryTreeNode *parent = nil;
    NSString *dataString = (NSString*)data;
    NSInteger dataVal = [dataString integerValue];
    
    if (self.root == nil) {
        self.root = temp;
        return;
    }
    while (cur) {
        parent = cur;
        NSString *curDataString = (NSString*)cur.data;
        NSInteger curDataVal = [curDataString integerValue];
        cur = (dataVal < curDataVal)? cur.left:cur.right;
    }
    NSString *parentString = (NSString*)parent.data;
    NSInteger parentInteger = [parentString integerValue];
    if (dataVal < parentInteger) {
        parent.left = temp;
    }
    else{
        parent.right = temp;
    }
    
}

-(void)insertNodeRecursively:(BinaryTreeNode*) node withData:(NSObject*)data{
    BinaryTreeNode *temp = nil;//[[BinaryTreeNode alloc] init];
    
    //BinaryTreeNode *parent = nil;
    NSString *dataString = (NSString*)data;
    NSInteger dataVal = [dataString integerValue];
    
    if (self.root == nil) {
        temp = [[BinaryTreeNode alloc] init];
        temp.data = data;
        temp.left = nil;
        temp.right = nil;
        self.root = temp;
        return;
    }
    NSString * curString = (NSString*) node.data;
    
    if (dataVal < [curString integerValue]) {
        if (node.left !=nil) {
            [self insertNodeRecursively:node.left withData:data];
        }
        else{
            temp = [[BinaryTreeNode alloc] init];
            temp.data = data;
            temp.left = nil;
            temp.right = nil;
            node.left = temp;
        }
    }
    else{
        if (node.right !=nil) {
            [self insertNodeRecursively:node.right withData:data];
        }
        else{
            temp = [[BinaryTreeNode alloc] init];
            temp.data = data;
            temp.left = nil;
            temp.right = nil;
            node.right = temp;

        }
    }
    
}

-(void) printPreOrder:(BinaryTreeNode*) tree{
    if (tree) {
        NSLog(@"%@",tree.data);
        [self printPreOrder:tree.left];
        [self printPreOrder:tree.right];
    }
}

-(void) printInOrder:(BinaryTreeNode*) tree{
    if (tree) {
        [self printInOrder:tree.left];
        NSLog(@"%@",tree.data);
        [self printInOrder:tree.right];
    }
}

-(void) printPostOrder:(BinaryTreeNode*) tree{
    if (tree) {
        [self printPostOrder:tree.left];
        [self printPostOrder:tree.right];
        NSLog(@"%@",tree.data);
        
    }
}


-(BinaryTreeNode*) getNode:(NSObject*)data withRoot:(BinaryTreeNode*) root{
    NSString *dataString = (NSString*)data;
    NSString *rootString = (NSString*)root.data;
    
    if ([dataString integerValue] == [rootString integerValue]) {
        return root;
    }
    else if ([dataString integerValue] < [rootString integerValue]){
        [self getNode:data withRoot:root.left];
    }
    else if ([dataString integerValue] > [rootString integerValue]){
        [self getNode:data withRoot:root.right];
    }
    return nil;
}

@end
