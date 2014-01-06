//
//  ViewController.m
//  DatePicker
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UITextField *yearField;
@property (strong, nonatomic) IBOutlet UITextField *monthField;
@property (strong, nonatomic) IBOutlet UITextField *dayField;

@end

@implementation ViewController

- (IBAction)pickerChanged:(id)sender {
    
    NSLog(@"pickerChanged~!!");
    NSDate *selectedDate = self.datePicker.date;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger flag = NSYearCalendarUnit | NSMonthCalendarUnit|NSDayCalendarUnit;
    NSDateComponents *comp = [calendar components:flag fromDate:selectedDate];
    self.yearField.text = [NSString stringWithFormat:@"% ld",[comp year]];
    self.monthField.text = [NSString stringWithFormat:@"%ld",[comp month]];
    self.dayField.text = [NSString stringWithFormat:@"%ld",[comp day]];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
