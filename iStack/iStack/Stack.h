//
//  Stack.h
//  iStack
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property(nonatomic, strong) NSMutableArray *stackElements;
@property(nonatomic, assign) NSInteger tos;
@property(nonatomic, assign) NSInteger maxSize;

-(void) initStackWithMaxSize:(NSInteger) maxSize;
-(void) push:(NSObject*) data;
-(NSObject*) pop;
-(BOOL) isFull;
-(BOOL) isEmpty;

@end
