//
//  CountriesRepository.m
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountriesRepository.h"

@implementation CountriesRepository

- (NSMutableArray *) fetchCountries {

    self.countries = NSMutableArray.new;
    
    Country *southAfrica = Country.new;
    southAfrica.name = @"South Africa";
    southAfrica.currency = @"Rand";
    southAfrica.region = @"Africa";
    southAfrica.language = @"English";
    southAfrica.image = @"SouthAfrica";
   [self.countries addObject:southAfrica];
    
    Country *nigeria = Country.new;
    nigeria.name = @"Nigeria";
    nigeria.currency = @"Naira";
    nigeria.region = @"Africa";
    nigeria.language = @"Birom";
    nigeria.image = @"Nigeria";
    [self.countries addObject:nigeria];
    
    Country *morocco = Country.new;
    morocco.name = @"Morocco";
    morocco.currency = @"Dirham";
    morocco.region = @"Africa";
    morocco.language = @"Arabic";
    morocco.image = @"Morocco";
    [self.countries addObject:morocco];
    
    Country *kenya = Country.new;
    kenya.name = @"Kenya";
    kenya.currency = @"Kenyan Shilling";
    kenya.region = @"Africa";
    kenya.language = @"Swahili";
    kenya.image = @"Kenya";
    [self.countries addObject:kenya];
    
    Country *senegal = Country.new;
    senegal.name = @"Senegal";
    senegal.currency = @"Franc";
    senegal.region = @"Africa";
    senegal.language = @"French";
    senegal.image = @"Senegal";
    [self.countries addObject:senegal];
    
    Country *ghana = Country.new;
    ghana.name = @"Ghana";
    ghana.currency = @"Ghana Cedi";
    ghana.region = @"Africa";
    ghana.language = @"Asante Twi";
    ghana.image = @"Ghana";
    [self.countries addObject:ghana];
    
    Country *congo = Country.new;
    congo.name = @"Democratic Republic of Congo";
    congo.currency = @"French";
    congo.region = @"Africa";
    congo.language = @"Franc";
    congo.image = @"Congo";
    [self.countries addObject:congo];

    return self.countries;
}

@end
