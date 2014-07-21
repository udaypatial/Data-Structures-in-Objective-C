//
//  AVLTreeViewController.m
//  iAVLTree
//
//  Created by UDAY-MAC on 17/07/14.
//
//

#import "AVLTreeViewController.h"
#import "AVLTree.h"

@interface AVLTreeViewController ()

@end

@implementation AVLTreeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    AVLTree *tree = [[AVLTree alloc] init];
    [tree insertNodeRecursively:tree.root withData:@"10"];
    [tree insertNodeRecursively:tree.root withData:@"20"];
    [tree insertNodeRecursively:tree.root withData:@"30"];
    [tree insertNodeRecursively:tree.root withData:@"40"];
    [tree insertNodeRecursively:tree.root withData:@"50"];
    [tree insertNodeRecursively:tree.root withData:@"25"];
    
    NSLog(@"pre order display");
    [tree printPreOrder:tree.root];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
