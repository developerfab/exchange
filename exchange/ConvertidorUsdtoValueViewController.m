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
    //Se instancia el manejador para realizar la peticion
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    
    //se envia la peticion
    [manager GET:@"http://api.fixer.io/latest?base=USD" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *rates = [responseObject objectForKey:@"rates"];
        NSString *gbp = [rates objectForKey:@"GBP"];
        _unit.text = [ NSString stringWithFormat:@"1 USD EN GBP: %@" ,gbp];
        NSString *value = _valueToConvert.text;
        NSString *result = [_conveter convert:value: gbp];
        _result.text = [NSString stringWithFormat:@" %@ USD equivalen a %@ GBP", value, result];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

- (IBAction)ConvertToEURButton:(id)sender{
    //Se instancia el manejador para realizar la peticion
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    
    //se envia la peticion
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [manager GET:@"http://api.fixer.io/latest?base=USD" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *rates = [responseObject objectForKey:@"rates"];
        NSString *eur = [rates objectForKey:@"EUR"];
        _unit.text = [ NSString stringWithFormat:@"1 USD EN EUR: %@" ,eur];
        NSString *value = _valueToConvert.text;
        NSString *result = [_conveter convert:value: eur];
        _result.text = [NSString stringWithFormat:@" %@ USD equivalen a %@ EUR", value, result];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (IBAction)ConvertToJPYButton:(id)sender{
    //Se instancia el manejador para realizar la peticion
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    
    //se envia la peticion
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [manager GET:@"http://api.fixer.io/latest?base=USD" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *rates = [responseObject objectForKey:@"rates"];
        NSString *jpy = [rates objectForKey:@"JPY"];
        _unit.text = [ NSString stringWithFormat:@"1 USD EN EUR: %@" ,jpy];
        NSString *value = _valueToConvert.text;
        NSString *result = [_conveter convert:value: jpy];
        _result.text = [NSString stringWithFormat:@" %@ USD equivalen a %@ JPY", value, result];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (IBAction)ConvertToBRLButton:(id)sender{
    //Se instancia el manejador para realizar la peticion
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:nil];
    
    //se envia la peticion
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [manager GET:@"http://api.fixer.io/latest?base=USD" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *rates = [responseObject objectForKey:@"rates"];
        NSString *brl = [rates objectForKey:@"BRL"];
        _unit.text = [ NSString stringWithFormat:@"1 USD EN EUR: %@" ,brl];
        NSString *value = _valueToConvert.text;
        NSString *result = [_conveter convert:value: brl];
        _result.text = [NSString stringWithFormat:@" %@ USD equivalen a %@ BRL", value, result];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}


@end
