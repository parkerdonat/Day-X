//
//  DetailViewController.m
//  DayX
//
//  Created by Kaleo Kim on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clearButtonTapped:(id)sender {
    self.textField.text = @"";
    self.bodyTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender
{
    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.bodyText = self.bodyTextView.text;
        self.entry.timeStamp = [NSDate new];
    } else {
  // remember, the createEntry method returns the created Entry object
        self.entry = [[EntryController sharedInstance] createEntryWithTitle:self.textField.text bodyText:self.bodyTextView.text];
    }
    
}

- (void)updateWithEntry:(Entry *)entry{
    self.textField.text = entry.title;
    self.bodyTextView.text = entry.bodyText;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
