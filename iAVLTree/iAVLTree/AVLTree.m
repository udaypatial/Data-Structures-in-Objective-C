//
//  AVLTree.m
//  iAVLTree
//
//  Created by UDAY-MAC on 17/07/14.
//
//

#import "AVLTree.h"

@implementation AVLTree

-(AVLNode*) rightRotate:(AVLNode*) disturbedNode{
    AVLNode * dLeft = disturbedNode.left;
    AVLNode * dLeftRight = dLeft.right;
    
    //Rotate
    dLeft.right = disturbedNode;
    
    disturbedNode.left = dLeftRight;
    
    //Update the heights.
    if (disturbedNode.left == nil && disturbedNode.right == nil) {
        disturbedNode.height = 0;
    }
    else{
        disturbedNode.height = [self max:disturbedNode.left.height :disturbedNode.right.height] + 1;
    }
    
    dLeft.height = [self max:dLeft.left.height :dLeft.right.height]+1;
    NSString *dLeftString = (NSString*)disturbedNode.data;
    NSString *rootString = (NSString*)self.root.data;
    NSLog(@"the root value is %d",[rootString integerValue]);
    if ([dLeftString integerValue] == [rootString integerValue]) {
        disturbedNode.parent = dLeft;
        dLeft.parent = nil;
        self.root = dLeft;
    }
    else{
        disturbedNode.parent.right = dLeft;
        dLeft.parent = disturbedNode.parent;
    }
    
    return dLeft;
}

-(AVLNode*) leftRotate:(AVLNode*) disturbedNode{
    AVLNode *dRight = disturbedNode.right;
    AVLNode *dRightLeft = dRight.left;
    //Rotate.
    dRight.left = disturbedNode;
    //disturbedNode.parent = dRight;
    disturbedNode.right = dRightLeft;
    
    //Update height.
    if (disturbedNode.left == nil && disturbedNode.right == nil) {
        disturbedNode.height = 0;
    }
    else{
        disturbedNode.height = [self max:disturbedNode.left.height :disturbedNode.right.height] + 1;
    }
    
    dRight.height = [self max:dRight.left.height :dRight.right.height]+1;
    NSString *dRightString = (NSString*)disturbedNode.data;
    NSString *rootString = (NSString*)self.root.data;
    
    if ([dRightString integerValue] == [rootString integerValue]) {
        disturbedNode.parent = dRight;
        dRight.parent = nil;
        self.root = dRight;
    }
    else{
        disturbedNode.parent.right = dRight;
        dRight.parent = disturbedNode.parent;
    }
    //self.root = dRight;
    
    return dRight;
}

-(NSInteger) getBalance:(AVLNode*) node{
    if (!node) {
        return 0;
    }
    if (node.left == nil && node.right !=nil) {
        return (-1 - node.right.height);
    }
    if (node.right == nil && node.left != nil) {
        return (node.left.height + 1);
    }
    
    return node.left.height - node.right.height;
}

-(NSInteger) max:(NSInteger) a : (NSInteger) b{
    return (a>=b)?a:b;
}

-(void)insertNodeRecursively:(AVLNode*) node withData:(NSObject*)data{
    AVLNode *temp = nil;//[[BinaryTreeNode alloc] init];
    
    NSString *dataString = (NSString*)data;
    NSInteger dataVal = [dataString integerValue];
    
    if (self.root == nil) {
        temp = [[AVLNode alloc] init];
        temp.data = data;
        temp.left = nil;
        temp.right = nil;
        temp.parent = nil;
        temp.height = 0;
        self.root = temp;
        
    }
    NSString * curString = (NSString*) node.data;
    
    if (dataVal < [curString integerValue]) {
        if (node.left !=nil) {
            [self insertNodeRecursively:node.left withData:data];
            
        }
        else{
            temp = [[AVLNode alloc] init];
            temp.data = data;
            temp.left = nil;
            temp.right = nil;
            temp.height = 0;
            node.left = temp;
            temp.parent = node;
        }
    }
    else{
        if (node.right !=nil) {
            [self insertNodeRecursively:node.right withData:data];
            
        }
        else{
            temp = [[AVLNode alloc] init];
            temp.data = data;
            temp.left = nil;
            temp.right = nil;
            temp.height = 0;
            node.right = temp;
            temp.parent = node;
            
        }
    }
    node.height = [self max:node.left.height :node.right.height] + 1;
    //Check balance factor.
    NSInteger balance = [self getBalance:node];
    NSString *nodeLeft = (NSString*)node.left.data;
    NSInteger nodeLeftVal = [nodeLeft integerValue];
    
    NSString *nodeRight = (NSString*)node.right.data;
    NSInteger nodeRightVal = [nodeRight integerValue];
    
    
    
//    if (balance_factor(L) == 2) { //The left column
//        let P=left_child(L)
//        if (balance_factor(P) == -1) { //The "Left Right Case"
//            rotate_left(P) //reduce to "Left Left Case"
//        }
//        //Left Left Case
//        rotate_right(L);
//    } else { // balance_factor(L) == -2, the right column
//        let P=right_child(L)
//        if (balance_factor(P) == 1) { //The "Right Left Case"
//            rotate_right(P) //reduce to "Right Right Case"
//        }
//        //Right Right Case
//        rotate_left(L);
//    }
    //Left Left case
    
    if (balance == 2) {
        if ([self getBalance:node.left] == 1) {
            //
            [self rightRotate:node];
        }
        if ([self getBalance:node.left] == -1) {
            //
            [self leftRotate:node.left];
            [self rightRotate:node];
        }
    }
    NSInteger rightBalance = [self getBalance:node.right];
    if (balance == -2) {
        if (rightBalance == -1) {
            //
            [self leftRotate:node];
        }
        if (rightBalance == 1) {
            //
            //AVLNode *rightNode = node.right;
            [self rightRotate:node.right];
            [self leftRotate:node];
        }
    }

}

-(void) printPreOrder:(AVLNode*) tree{
    if (tree) {
        
        NSLog(@"%@----height = %d",tree.data,tree.height);
        [self printPreOrder:tree.left];
        [self printPreOrder:tree.right];
    }
}




@end
