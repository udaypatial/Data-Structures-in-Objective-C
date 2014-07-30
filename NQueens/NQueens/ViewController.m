//
//  ViewController.m
//  NQueens
//
//  Created by UDAY-MAC on 30/07/14.
//  Copyright (c) 2014 Tavant Technologies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) NSMutableArray * queenMatrixArray;
@property(nonatomic, assign) NSInteger order;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //order 8 has 92 solutions. see all of them in the logs \m/
    self.order = 8;
    
    self.queenMatrixArray = [[NSMutableArray alloc] initWithCapacity:self.order*self.order];
    //Initialize the array or you'll get out of bounds exception.
    //array index is the row and value is the column where queen shall be placed
    for (NSInteger i = 0; i<self.order+1; i++) {
        [self.queenMatrixArray addObject:[NSNumber numberWithInteger:0]];
    }
    [self nQueens:1 withColumn:self.order];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) nQueens:(NSInteger)k withColumn:(NSInteger)n{
    for (NSInteger i = 1; i<=n; i++) {
        if ([self placeInRow:k withColumn:i]) {
            self.queenMatrixArray[k] = [NSNumber numberWithInteger:i];
            if (k == n) {
                NSLog(@"print the array");
                for (NSInteger a=0; a<[self.queenMatrixArray count]; a++) {
                    NSLog(@"the obj is %d",[[self.queenMatrixArray objectAtIndex:a] integerValue]);
                }
            }
            else{
                [self nQueens:k+1 withColumn:n];
            }
        }
    }
}

-(BOOL) placeInRow:(NSInteger) k withColumn:(NSInteger)i{
    //same row is taken care of by the for loop
    
    for (NSInteger j = 1; j<=k-1; j++) {
        //check if same column or diagnol
        if (([[self.queenMatrixArray objectAtIndex:j] integerValue] == i) || ([self abs:(j-k)] == [self abs:([[self.queenMatrixArray objectAtIndex:j] integerValue]-i)])) {
            return NO;
        }
    }
    return YES;
}

-(NSInteger) abs:(NSInteger)val{
    return (val<0)?(-1*val):val;
}
@end
