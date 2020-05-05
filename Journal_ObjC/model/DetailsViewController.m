//
//  DetailsViewController.m
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
}

- (void) updateViews {
    //self.entryNameOutlet.delegate = self;
    if (_entry) {
        self.entryNameOutlet.text = _entry.title;
        self.entryTextOutlet.text = _entry.text;
    }
}

/*
- (void)setEntry:(Entry *)entry
{
    if (entry != _entry) {
        _entry = entry;
        [self updateViews];
    }
} */

- (IBAction)entrySaveButtonAction:(UIBarButtonItem *)sender {
    
    //if(self.entryNameOutlet.text != nil && self.entryTextOutlet.text != nil) {
    if (self.entry) {
        
        self.entry.title = self.entryNameOutlet.text;
        self.entry.text = self.entryTextOutlet.text;
        self.entry.date = [NSDate date];
        
    } else {
        
        Entry *entry = [[Entry alloc] initWithTitle:self.entryNameOutlet.text text:self.entryTextOutlet.text];
        
        [EntryController.shared createEntry: entry];
        self.entry = entry;
    }
    
    [self.navigationController popViewControllerAnimated:true];
    //}
}

- (IBAction)entryButtonAction:(UIButton *)sender {
    self.entryNameOutlet.text = @"";
    self.entryTextOutlet.text = @"";
}

-(BOOL) textFieldShouldReturn: (UITextField * ) textField {
    [self resignFirstResponder];
    return YES;
}


@end
