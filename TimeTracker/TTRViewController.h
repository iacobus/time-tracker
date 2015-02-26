//
//  TTRViewController.h
//  TimeTracker
//
//  Created by pivotalcb on 2/25/15.
//
//

#import <UIKit/UIKit.h>

@interface TTRViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *dayLabel;
@property (nonatomic, weak) IBOutlet UILabel *monthLabel;
@property (nonatomic, weak) IBOutlet UIButton *startButton;

- (IBAction) startButtonPressed;

@end
