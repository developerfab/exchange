//
//  ConvertidorUsdtoValueViewController.m
//  exchange
//
//  Created by Fabricio on 26/08/16.
//  Copyright (c) 2016 Fabricio. All rights reserved.
//

#import "ConvertidorUsdtoValueViewController.h"

@interface ConvertidorUsdtoValueViewController ()

@end

@implementation ConvertidorUsdtoValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // se crea la intancia del objeto converter
    _conveter = [Converter new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//ACCIONES DE LOS BOTONES

- (IBAction)ConvertToGBPButton:(id)sender{
    [self ConvertAndRender:@"GBP" : _valueToConvert.text];
    
}

- (IBAction)ConvertToEURButton:(id)sender{
    [self ConvertAndRender:@"EUR" : _valueToConvert.text];
}

- (IBAction)ConvertToJPYButton:(id)sender{
    [self ConvertAndRender:@"JPY" : _valueToConvert.text];
}

- (IBAction)ConvertToBRLButton:(id)sender{
    [self ConvertAndRender:@"BRL" : _valueToConvert.text];
}
-(void)ConvertAndRender:(NSString*)valueBase :(NSString*)value2{
    //Se instancia el manejador para realizar la peticion
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    
    //se envia la peticion
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [manager GET:@"http://api.fixer.io/latest?base=USD" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *rates = [responseObject objectForKey:@"rates"];
        NSString *base = [rates objectForKey:valueBase];
        _unit.text = [ NSString stringWithFormat:@"1 USD EN %@ : %@", valueBase ,base];
        NSString *result = [_conveter convert:value2: base];
        _result.text = [NSString stringWithFormat:@" %@ USD equivalen a %@ %@", value2, result, valueBase];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}


@end
