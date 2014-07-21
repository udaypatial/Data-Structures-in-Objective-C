//
//  Stack.m
//  iStack
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import "Stack.h"

@implementation Stack

-(void) initStackWithMaxSize:(NSInteger) maxSize{
    self.stackElements = [[NSMutableArray alloc] init];
    self.maxSize = maxSize;
    self.tos = -1;
    
}

-(void) push:(NSObject*) data{
    if ([self isFull]) {
        NSLog(@"Stack has reached its maximum size");
        return;
    }
    [self.stackElements addObject:data];

    self.tos++;
}

-(NSObject*) pop{
    if ([self isEmpty]) {
        NSLog(@"Cannot pop any element. Stack is empty");
        return nil;
    }
    
    NSObject * data = [self.stackElements objectAtIndex:self.tos];
    [self.stackElements removeObjectAtIndex:self.tos];
    self.tos--;
    return data;
}

-(BOOL) isFull{
    if (self.tos == self.maxSize-1) {
        return YES;
    }
    return NO;
}

-(BOOL) isEmpty{
    if (self.tos == -1) {
        return YES;
    }
    return NO;
}

@end
