//
//  MainViewController.m
//  Quiz - Programmatically
//
//  Created by Immanuel Kannan on 09/04/2016.
//  Copyright © 2016 Immanuel. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

#pragma mark - Initializer
- (instancetype) init {
    if (self = [super init]) {
        _indexCount = 0;
        
        _questions = @[@"What is cognac made of?",
                       @"What is 2+2",
                       @"What is the capital of Malaysia?"];
        
        _answers = @[@"Grapes",
                     @"4",
                     @"Kuala Lumpur"];
        
        
    }
    
    return self;
}

#pragma mark - Touch Events
- (IBAction) nextQuestionButtonPressed: (id) sender {
    NSLog(@"Button Pressed");
   
    _indexCount++;
    
    if (self.indexCount == [_questions count])
        self.indexCount = 0;
    
    _questionLabel.text = _questions[_indexCount];
    _answerLabel.text = @"";
}

- (IBAction) showAnswerButtonPressed: (id) sender {
    
}

#pragma mark - View Methods
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _questionLabel = [[UILabel alloc] initWithFrame: CGRectMake(40, 150, 240, 30)];
    _questionLabel.textAlignment = NSTextAlignmentCenter;
    _questionLabel.text = _questions[_indexCount];
    
    _answerLabel = [[UILabel alloc] initWithFrame: CGRectMake(40, 350, 240, 30)];
    _answerLabel.textAlignment = NSTextAlignmentCenter;
    
    
    _questionLabel.backgroundColor = [UIColor redColor];
    _answerLabel.backgroundColor = [UIColor blueColor];
    
    //Code to create the "Next Question" Button
    UIButton *nextQuestionButton = [UIButton buttonWithType: UIButtonTypeSystem];
    nextQuestionButton.frame = CGRectMake(105, 190, 110, 30);
    [nextQuestionButton setTitle:@"Next Question" forState:UIControlStateNormal];
    [nextQuestionButton addTarget:self
                           action:@selector(nextQuestionButtonPressed:)
                 forControlEvents:UIControlEventTouchUpInside];
    
    //Code to create the "Show Answer" Button
    UIButton *showAnswerButton = [UIButton buttonWithType: UIButtonTypeSystem];
    showAnswerButton.frame = CGRectMake(105, 390, 110, 30);
    [showAnswerButton setTitle:@"Show Answer" forState:UIControlStateNormal];
    [showAnswerButton addTarget:self
                         action:@selector(showAnswerButtonPressed:)
               forControlEvents:UIControlEventTouchUpInside];
    
    //Adds all the views as subviews of the main view
    [self.view addSubview: _questionLabel];
    [self.view addSubview: _answerLabel];
    [self.view addSubview: nextQuestionButton];
    [self.view addSubview: showAnswerButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
