//
//  AVLTree.h
//  iAVLTree
//
//  Created by UDAY-MAC on 17/07/14.
//
//

#import <Foundation/Foundation.h>
#import "AVLNode.h"

@interface AVLTree : NSObject

@property(nonatomic,strong) AVLNode *root;


-(void)insertNodeRecursively:(AVLNode*) node withData:(NSObject*)data;
-(void) printPreOrder:(AVLNode*) tree;

@end
