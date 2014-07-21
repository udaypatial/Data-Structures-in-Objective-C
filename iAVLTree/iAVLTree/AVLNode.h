//
//  AVLNode.h
//  iAVLTree
//
//  Created by UDAY-MAC on 17/07/14.
//
//

#import <Foundation/Foundation.h>

@interface AVLNode : NSObject

@property(nonatomic,strong) NSObject *data;
@property(nonatomic,strong) AVLNode *left;
@property(nonatomic,strong) AVLNode *right;
@property(nonatomic,strong) AVLNode *parent;
@property(nonatomic,assign) NSInteger height;

@end
