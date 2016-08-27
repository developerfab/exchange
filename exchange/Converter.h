//
//  Converter.h
//  exchange
//
//  Created by Fabricio on 26/08/16.
//  Copyright (c) 2016 Fabricio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface Converter : NSObject

-(NSString *) convert:(NSString*)valueBase:(NSString*)inputValue;


@end
