//
//  ViewController.m
//  Lab1
//
//  Created by Markus on 2019-01-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"
#import "RymdFarja.h"

@interface ViewController ()

@property (strong) RymdFarja *rymdFarja;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _titleLabel.text = @"Ange ditt deltagande";
    [_attendButton setTitle:@"Attend" forState:UIControlStateNormal];
    _cancelLabel.text = @"Jag vill inte delta";
    [_cancelButton setTitle:@"Delta inte" forState:UIControlStateNormal];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    _nameTextField.text = [defaults objectForKey:@"textField"];
    [self attendButtonPressed:nil];
    [self cancelButtonPressed:nil];
    
    self.rymdFarja = [RymdFarja new];
    _rymdFarja.namn = _nameTextField.text;
    
    NSArray *minArray = @[@"hej", @"pa", @"dig"];
    for (NSString *string in minArray) {
        NSLog(@"Value: %@", string);
    }
    
    NSDictionary *minDictionary = @{@"nyckel":@"värde"};
    NSLog(@"Värde för \"nyckel\": %@", minDictionary[@"nyckel"]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)attendButtonPressed:(id)sender {
    [self saveTextField];
    _titleLabel.text = [NSString stringWithFormat:@"Deltar: %@", _nameTextField.text];
    _rymdFarja.namn = _nameTextField.text;
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self saveTextField];
    _cancelLabel.text = [NSString stringWithFormat:@"Deltar ej: %@", _nameTextField.text];
    _rymdFarja.namn = _nameTextField.text;
}

- (void)saveTextField {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_nameTextField.text forKey:@"textField"];
}

@end
