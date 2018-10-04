//
//  ViewController.h
//  basithesapmakinesi
//
//  Created by 2015 on 7.09.2015.
//  Copyright (c) 2015 2015. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic) double ilkSayi;
@property (nonatomic) double ikinciSayi;
@property (nonatomic) double myValue;



@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;



- (IBAction)bTopla:(id)sender;

- (IBAction)bCikar:(id)sender;

- (IBAction)bCarp:(id)sender;

- (IBAction)bBol:(id)sender;

-(double)textIlkSayi:(NSString*)ilk;
-(double)textIkinciSayi:(NSString*)ikinci;


@property (weak, nonatomic) IBOutlet UILabel *LSonuc;




@end

