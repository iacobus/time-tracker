//
//  TTRViewController.m
//  TimeTracker
//
//  Created by pivotalcb on 2/25/15.
//
//

#import "TTRViewController.h"

@interface TTRViewController ()
- (void) setToday;

@property (nonatomic, readwrite) BOOL isCurrentTracking;

@end

@implementation TTRViewController

- (void)viewDidLoad
{
    [self setToday];
    self.isCurrentTracking = NO;
    
    [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    [self.startButton setTitle:@"Stop" forState:UIControlStateSelected];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) startButtonPressed
{
    self.isCurrentTracking = !self.isCurrentTracking;
    [self.startButton setSelected:self.isCurrentTracking];
}

- (void) setToday
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"dd"];
    [self.dayLabel setText:[dateFormatter stringFromDate:[NSDate date]]];
    
    [dateFormatter setDateFormat:@"MMMM"];
    [self.monthLabel setText: [dateFormatter stringFromDate:[NSDate date]]];
}

@end
