//
//  ViewController.h
//  Lab1
//
//  Created by Markus on 2019-01-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *attendButton;
@property (weak, nonatomic) IBOutlet UILabel *cancelLabel;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

- (IBAction)attendButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end

