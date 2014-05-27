//
//  FAViewController.m
//  FirstApp
//
//  Created by 山田 宏道 on 2014/05/24.
//  Copyright (c) 2014年 Torques Inc. All rights reserved.
//

#import "FAViewController.h"

@interface FAViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myCar;

@end

@implementation FAViewController
{
	int test;
	NSString* messageText;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	// このメソッドは、この画面がロードされた時に呼ばれる.
	
	NSString *message1 = [NSString stringWithFormat:@"%d歳", 10];
	NSLog( @"%@", message1 );
	NSLog( @"%d文字", [message1 length] );
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
	
	// このメソッドは、メモリ不足時に呼ばれる.
	// 破棄してもよいデータが有れば破棄すると良いが、通常あまり使わない.
}

// IBAction で、storyboard上の"Run"ボタンのアクションと紐付いています.
// ↩のアイコンが ◉となっていたら、紐付いていますが、◎となっていたら、紐付いていません.
- (IBAction)buttonRunPressed:(id)sender
{
	NSLog(@"Run");
	
//	self.myCar.hidden	= !self.myCar.hidden;

//	CGRect	frameCar	= self.myCar.frame;	// 位置と大きさの情報を取り出して、
//	frameCar.origin.x = 300;	// 変更して,
//	self.myCar.frame	= frameCar;	// 設定し直す.
	
	// 場所を左にリセット.
	CGRect	frameCar	= self.myCar.frame;	// 位置と大きさの情報を取り出して、
	frameCar.origin.x = 0;	// 変更して,
	self.myCar.frame	= frameCar;	// 設定し直す.
	
	// アニメーション.
	[UIView animateWithDuration:3.0f	// 下記アニメーションを実行完了するまでの時間（秒）
									 animations:^{
										 // myCarの位置を右の方に設定.
										 CGRect	frameCar	= self.myCar.frame;	// 位置と大きさの情報を取り出して、
										 frameCar.origin.x = 300;	// 変更して,
										 self.myCar.frame	= frameCar;	// 設定し直す.
									 }];
}

@end
