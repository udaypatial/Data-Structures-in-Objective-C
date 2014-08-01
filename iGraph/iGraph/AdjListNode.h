//
//  AdjListNode.h
//  iGraph
//
//  Created by UDAY-MAC on 31/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdjListNode : NSObject

@property(nonatomic,assign) NSInteger vertex;
@property(nonatomic, strong) AdjListNode * next;

@end
