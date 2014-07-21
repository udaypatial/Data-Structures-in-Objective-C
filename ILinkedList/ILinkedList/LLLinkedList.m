//
//  LLLinkedList.m
//  ILinkedList
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import "LLLinkedList.h"

@implementation LLLinkedList

-(void) headInsert:(NSObject*)data{
    LLNode *temp = [[LLNode alloc] init];
    temp.data = data;
    temp.next = nil;
    
    if (self.head == nil) {
        self.head = temp;
        self.tail = temp;
    }
    
    else{
        temp.next = self.head;
        self.head = temp;
    }
    
}

-(void) appendTail:(NSObject*)data{
    LLNode *temp = [[LLNode alloc] init];
    temp.data = data;
    temp.next = nil;
    
    if (self.head == nil) {
        self.head = temp;
        self.tail = temp;
    } else {
        self.tail.next = temp;
        self.tail = temp;
    }
}

-(void) insertAfterNode:(LLNode*)afterMe withData:(NSObject*)data{
    if (afterMe!=nil) {
        LLNode *newNode = [[LLNode alloc] init];
        newNode.data = data;
        newNode.next = afterMe.next;
        afterMe.next = newNode;
    }
}

-(LLNode*) getNode:(NSInteger)pos{
    LLNode *p = self.head;
    while (pos--) {
        if (p!=nil) {
            p = p.next;
        }
        else{
            return nil;
        }
    }
    
    return p;
}

-(void) traverseAndPrint{
    LLNode * p = self.head;
    
    if (self.head == nil) {
        NSLog(@" traverse List is empty");
    }
    else{
        while (p!=nil) {
            NSLog(@"%@->",p.data);
            p=p.next;
        }
    }
}

-(void) reverseList{
    LLNode *prev = nil;
    LLNode *next;
    
    if (self.head == nil) {
        NSLog(@"the list is empty");
    }
    else{
        self.tail = self.head;
        while (self.head) {
            
            next = self.head.next;
            self.head.next = prev;
            prev = self.head;
            self.head = next;
            
        }
    }
    self.head = prev;
}

@end
