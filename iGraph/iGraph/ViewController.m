//
//  ViewController.m
//  iGraph
//
//  Created by UDAY-MAC on 31/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import "ViewController.h"
#import "Graph.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Graph *newGraph = [Graph initGraphwithVertices:6 isDirected:NO];
    [newGraph addEdgewithSource:0 toDestination:2];
    [newGraph addEdgewithSource:2 toDestination:5];
    [newGraph addEdgewithSource:2 toDestination:3];
    [newGraph addEdgewithSource:3 toDestination:4];
    [newGraph addEdgewithSource:4 toDestination:2];
    [newGraph addEdgewithSource:3 toDestination:1];
    [newGraph addEdgewithSource:1 toDestination:3];
    [newGraph traverseGraph];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
