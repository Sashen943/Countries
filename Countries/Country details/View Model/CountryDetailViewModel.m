//
//  CountryDetailViewModel.m
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountryDetailViewModel.h"

@implementation CountryDetailViewModel

- (instancetype)init:(NSInteger) index {
    [self initialize:index];
    return self;
}

- (void) initialize:(NSInteger) index {
    self.countryDetailsRepository = [[CountryDetailsRepository alloc] init];
    self.country = [self.countryDetailsRepository fetchCountry:index];
}

- (NSString*) getDisplayableName{
    return self.country.name;
}

- (NSString*) getDisplayableCurrency{
    return self.country.currency;
}

- (NSString*) getDisplayableRegion{
    return self.country.region;
}

- (NSString*) getDisplayableImage{
    return self.country.image;
}

- (NSString*) getDisplayableLanguage{
    return self.country.language;
}

@end
