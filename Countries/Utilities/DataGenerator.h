//
//  DataGenerator.h
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@interface DataGenerator : NSObject
@property (strong, nonatomic) NSMutableArray<Country *> *countries;
- (NSMutableArray *) getCountryArray;
- (instancetype)init;
@end
