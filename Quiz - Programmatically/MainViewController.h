//
//  MainViewController.h
//  Quiz - Programmatically
//
//  Created by Immanuel Kannan on 09/04/2016.
//  Copyright © 2016 Immanuel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

//An index that will keep track of the current index in the array
@property (nonatomic) int indexCount;

//Model objects that will store the questions and answers
@property (nonatomic, strong) NSArray *questions;
@property (nonatomic, strong) NSArray *answers;

//UILabels that will display the questions and answers
@property (nonatomic, strong) IBOutlet UILabel *questionLabel;
@property (nonatomic, strong) IBOutlet UILabel *answerLabel;

//UIButtons that will allow you to show the next question and the answer for aforementioned question
@property (nonatomic, strong) UIButton *nextQuestionButton;
@property (nonatomic, strong) UIButton *showAnswerButton;

//Actions for the buttons to invoke
- (IBAction) nextQuestionButtonPressed: (id) sender;
- (IBAction) showAnswerButtonPressed: (id) sender;

@end
