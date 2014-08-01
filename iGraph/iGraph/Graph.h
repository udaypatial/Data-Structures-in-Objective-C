//
//  Graph.h
//  iGraph
//
//  Created by UDAY-MAC on 31/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Graph : NSObject

@property(nonatomic,assign) NSInteger noOfVertices;
@property(nonatomic,assign) BOOL isDirected;
//array of adj list objects
@property(nonatomic, strong) NSMutableArray *adjListArray;


+(Graph*) initGraphwithVertices:(NSInteger) vertices isDirected:(BOOL) isDirected;
-(void) addEdgewithSource:(NSInteger) src toDestination:(NSInteger)dest;
-(void) traverseGraph;


@end
