//
//  MainViewController.h
//  Quiz - Programmatically
//
//  Created by Immanuel Kannan on 09/04/2016.
//  Copyright © 2016 Immanuel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (nonatomic) int indexCount;
@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, strong) NSArray *answers;

@property (nonatomic, strong) IBOutlet UILabel *questionLabel;
@property (nonatomic, strong) IBOutlet UILabel *answerLabel;

@end
