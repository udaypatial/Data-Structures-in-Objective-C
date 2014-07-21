//
//  StackViewController.m
//  iStack
//
//  Created by UDAY-MAC on 16/07/14.
//
//

#import "StackViewController.h"
#import "Stack.h"

@interface StackViewController ()

@end

@implementation StackViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    Stack *newStack = [[Stack alloc] init];
    [newStack initStackWithMaxSize:10];
    [newStack push:@"1"];
    [newStack push:@"2"];
    [newStack push:@"3"];
    //NSLog(@"stack top element is dsf");
    [self hello:nil];
    
    
}

-(void) hello:(NSString*)myString{
    NSLog(@"dsfsdg %@",myString);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
