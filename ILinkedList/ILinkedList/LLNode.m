//
//  LLNode.m
//  ILinkedList
//
//  Created by Administrator on 16/07/14.
//
//

#import "LLNode.h"

@implementation LLNode

-(void) insertNodeAtEnd:(LLNode*)first withData:(NSObject*)data{
    LLNode *temp = [[LLNode alloc] init];
    temp.data = data;
    temp.next = nil;
    if (!first) {
        first = temp;
        return;
    }
    else{
        LLNode *last = first;
        while (last.next) {
            last = last.next;
        }
        last.next = temp;
    }
}

@end
