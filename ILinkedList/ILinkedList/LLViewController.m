//
//  LLViewController.m
//  ILinkedList
//
//  Created by Administrator on 16/07/14.
//
//

#import "LLViewController.h"
#import "LLNode.h"
#import "LLLinkedList.h"

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LLLinkedList *list = [[LLLinkedList alloc] init];
    [list headInsert:@"1"];
    [list headInsert:@"2"];
    [list headInsert:@"3"];
    [list headInsert:@"4"];
    [list traverseAndPrint];
    
    [list reverseList];
    [list traverseAndPrint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
