//
//  HomeViewController.m
//  Painter
//
//  Created by  ibokan on 10-9-7.
//  Copyright 2010 tencent.com. All rights reserved.
//

#import "HomeViewController.h"
#import "PainterView.h"


@implementation HomeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMine];
}
-(void)initMine
{
		self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
		self.view.backgroundColor = [UIColor whiteColor];
		
		_painterView = [[PainterView alloc] initWithFrame:CGRectMake(0, 0, 320, 440)];
		[self.view addSubview:_painterView];
		
		_toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 440, 320, 40)];
		_toolbar.barStyle = UIBarStyleBlack;
		[self.view addSubview:_toolbar];
		UIBarButtonItem *eraseButton = [[UIBarButtonItem alloc] initWithTitle:@" 颜色 "
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(erase)];
		
		UIBarButtonItem *clearButton = [[UIBarButtonItem alloc] initWithTitle:@" 清除 "
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(clear)];
		UIBarButtonItem *finishButton = [[UIBarButtonItem alloc] initWithTitle:@" 完成 "
																		style:UIBarButtonItemStyleBordered
																	   target:self
																	   action:@selector(finish)];
		UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
																			   target:nil
																			   action:nil];
		
		[_toolbar setItems:[NSArray arrayWithObjects:space, eraseButton, clearButton, finishButton,space, nil]];
		[eraseButton release];
		[clearButton release];
		[space release];

}

-(void) erase
{
    [_painterView erase:2001];
}

-(void) clear
{
	[_painterView resetView];
}

-(void) finish
{
	[_painterView setColor:[UIColor blackColor]];
}


- (void)dealloc 
{
	[_toolbar release];
    [super dealloc];
}


@end
