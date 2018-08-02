//
//  CountriesViewModel.m
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountriesViewModel.h"
#import "CountriesRepository.h"

@implementation CountriesViewModel

CountriesRepository* countriesRepository;
NSMutableArray<Country *> *countries;

- (void)initialize {
    countriesRepository = CountriesRepository.new;
    countries = NSMutableArray.new;
    countries = [countriesRepository fetchCountries];
}

- (NSString*) getDisplayableName:(NSInteger)index{
    return countries[index].name;
}

- (NSString*) getDisplayableCurrency:(NSInteger)index{
    return countries[index].currency;
}

- (NSString*) getDisplayableRegion:(NSInteger)index{
    return countries[index].region;
}

- (NSString*) getDisplayableImage:(NSInteger)index{
    return countries[index].image;
}

- (NSString*) getDisplayableLanguage:(NSInteger)index{
    return countries[index].language;
}

- (NSInteger) getCount:(NSInteger)index{
    return [countries count];
}

-(Country*) getCountry :(NSInteger)index{
    return countries[index];
}

@end
