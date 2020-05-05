//
//  DetailsViewController.h
//  Journal_ObjC
//
//  Created by Pete Parks on 5/4/20.
//  Copyright © 2020 Pete Parks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *entryNameOutlet;
@property (weak, nonatomic) IBOutlet UITextView *entryTextOutlet;
@property (strong, nonatomic) Entry *entry;

- (IBAction)entryButtonAction:(UIButton *)sender;
- (IBAction)entrySaveButtonAction:(UIBarButtonItem *)sender;



@end

NS_ASSUME_NONNULL_END
