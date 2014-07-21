//
//  BinaryTree.h
//  iBinaryTree
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree : NSObject

@property(nonatomic,strong) BinaryTreeNode *root;

//Tree operations
//TreeAdd()
//TreeRemove()
//TreeIsMember()
-(void) insertNode:(NSObject*)data;
-(void)insertNodeRecursively:(BinaryTreeNode*) node withData:(NSObject*)data;
-(void) printPreOrder:(BinaryTreeNode*) tree;
-(void) printInOrder:(BinaryTreeNode*) tree;
-(void) printPostOrder:(BinaryTreeNode*) tree;

@end
