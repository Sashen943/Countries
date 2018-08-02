//
//  CounrtyDetailsRepository.m
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountryDetailsRepository.h"
#import "DataGenerator.h"

@implementation CountryDetailsRepository

- (Country *)fetchCountry:(NSInteger)index {
    DataGenerator *dataGenerator = [[DataGenerator alloc] init];
    NSMutableArray<Country *> *countries = [dataGenerator getCountryArray];
    self.country = countries[index];
    return self.country;
}

- (instancetype)init{
    return self;
}

@end
