//
//  CountriesRepository.h
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@interface CountriesRepository : NSObject
@property (strong, nonatomic) NSMutableArray<Country *> *countries;
- (NSMutableArray *) fetchCountries;
@end
