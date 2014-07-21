//
//  LLLinkedList.h
//  ILinkedList
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import <Foundation/Foundation.h>
#import "LLNode.h"

@interface LLLinkedList : NSObject

@property(nonatomic,strong) LLNode *head;
@property(nonatomic,strong) LLNode *tail;


-(void) headInsert:(NSObject*)data;
-(void) appendTail:(NSObject*)data;
-(void) insertAfterNode:(LLNode*)afterMe withData:(NSObject*)data;
-(LLNode*) getNode:(NSInteger)pos;
-(void) traverseAndPrint;
-(void) reverseList;

@end
