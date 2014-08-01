//
//  Graph.m
//  iGraph
//
//  Created by UDAY-MAC on 31/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import "Graph.h"
#import "AdjListNode.h"
#import "AdjList.h"

@implementation Graph

-(AdjListNode*) createNode:(NSInteger) v{
    AdjListNode *newNode = [[AdjListNode alloc] init];
    newNode.vertex = v;
    newNode.next = nil;
    return newNode;
}

+(Graph*) initGraphwithVertices:(NSInteger) vertices isDirected:(BOOL) isDirected{
    Graph *newGraph = [[Graph alloc] init];
    newGraph.noOfVertices = vertices;
    newGraph.adjListArray = [[NSMutableArray alloc] initWithCapacity:vertices];
    newGraph.isDirected = isDirected;
    for (NSInteger v = 0; v < vertices; v++) {
        AdjList *newAdjList = [[AdjList alloc] init];
        newAdjList.head = nil;
        newAdjList.numMembers = 0;
        [newGraph.adjListArray addObject:newAdjList];
    }
    
    return newGraph;
}

-(void) addEdgewithSource:(NSInteger) src toDestination:(NSInteger)dest{
    AdjListNode *newNode = [self createNode:dest];
    AdjList *adjList = [self.adjListArray objectAtIndex:src];
    if (adjList.head == nil) {
        AdjListNode *head = [self createNode:src];
        adjList.head = head;
        adjList.head.next = newNode;
        newNode.next = nil;
    }
    else{
        AdjListNode *iterator = adjList.head;
        while (iterator.next) {
            iterator = iterator.next;
        }
        iterator.next = newNode;
        newNode.next = nil;
        
    }
    if (!self.isDirected) {
        AdjListNode *newNode2 = [self createNode:src];
        AdjList *unAdjList = [self.adjListArray objectAtIndex:dest];
        if (unAdjList.head == nil) {
            AdjListNode *head = [self createNode:dest];
            unAdjList.head = head;
            unAdjList.head.next = newNode2;
            newNode2.next = nil;
        }
        else{
            AdjListNode *iterator = unAdjList.head;
            while (iterator.next) {
                iterator = iterator.next;
            }
            iterator.next = newNode2;
            newNode2.next = nil;
            
        }
    }
}

-(void) traverseGraph{
    for (AdjList *adjList in self.adjListArray) {
        AdjListNode *iterator = adjList.head;
        NSLog(@"the head is %ld",(long)iterator.vertex);
        iterator = iterator.next;
        while (iterator) {
            NSLog(@"%ld",(long)iterator.vertex);
            iterator = iterator.next;
        }
    }
}



@end
