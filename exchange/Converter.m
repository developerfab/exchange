//
//  Converter.m
//  exchange
//
//  Created by Fabricio on 26/08/16.
//  Copyright (c) 2016 Fabricio. All rights reserved.
//

#import "Converter.h"

@implementation Converter

-(NSString *) convert:(NSString*)valueBase:(NSString*)inputValue{
    float value1 = [valueBase floatValue];
    float value2 = [inputValue floatValue];
    float x = value1*value2;
    NSString *rta = [NSString stringWithFormat:@"%f", x];
    return rta;
}




@end
