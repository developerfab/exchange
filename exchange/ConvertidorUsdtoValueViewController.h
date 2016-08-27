//
//  ConvertidorUsdtoValueViewController.h
//  exchange
//
//  Created by Fabricio on 26/08/16.
//  Copyright (c) 2016 Fabricio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConvertidorUsdtoValueViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *valueToConvert;

- (IBAction)ConvertToGBPButton:(id)sender;

- (IBAction)ConvertToEURButton:(id)sender;

- (IBAction)ConvertToJPYButton:(id)sender;

- (IBAction)ConvertToBRLButton:(id)sender;

@end
