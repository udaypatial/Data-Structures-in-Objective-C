//
//  BinaryTreeViewController.m
//  iBinaryTree
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import "BinaryTreeViewController.h"
#import "BinarySearchTree.h"

@interface BinaryTreeViewController ()

@end

@implementation BinaryTreeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    BinarySearchTree *tree = [[BinarySearchTree alloc] init];
    [tree insertNodeRecursively:tree.root withData:@"9"];
    [tree insertNodeRecursively:tree.root withData:@"4"];
    [tree insertNodeRecursively:tree.root withData:@"15"];
    [tree insertNodeRecursively:tree.root withData:@"6"];
    [tree insertNodeRecursively:tree.root withData:@"12"];
    [tree insertNodeRecursively:tree.root withData:@"17"];
    [tree insertNodeRecursively:tree.root withData:@"2"];
    
    NSLog(@"pre order display");
    [tree printPreOrder:tree.root];
    NSLog(@"in order display");
    [tree printInOrder:tree.root];
    NSLog(@"post order display");
    [tree printPostOrder:tree.root];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
