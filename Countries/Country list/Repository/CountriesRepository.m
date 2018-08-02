//
//  CountriesRepository.m
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountriesRepository.h"
#import "DataGenerator.h"

@implementation CountriesRepository

- (NSMutableArray *) fetchCountries {

    DataGenerator *dataGenerator = DataGenerator.new;
    self.countries = [dataGenerator getCountryArray ];
    return self.countries;
}

@end
