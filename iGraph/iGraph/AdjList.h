//
//  AdjList.h
//  iGraph
//
//  Created by UDAY-MAC on 31/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdjListNode.h"

@interface AdjList : NSObject

@property(nonatomic,assign) NSInteger numMembers;
@property(nonatomic, strong) AdjListNode * head;

@end
