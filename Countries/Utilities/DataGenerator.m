//
//  DataGenerator.m
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "DataGenerator.h"

@implementation DataGenerator

- (instancetype)init {
    return self;
}

- (NSMutableArray *) getCountryArray {
    
    self.countries = [[NSMutableArray alloc] init];
    
    Country *southAfrica = [[Country alloc] init];
    southAfrica.name = @"South Africa";
    southAfrica.currency = @"Rand";
    southAfrica.region = @"Africa";
    southAfrica.language = @"English";
    southAfrica.image = @"SouthAfrica";
    [self.countries addObject:southAfrica];
    
    Country *nigeria = [[Country alloc] init];
    nigeria.name = @"Nigeria";
    nigeria.currency = @"Naira";
    nigeria.region = @"Africa";
    nigeria.language = @"Birom";
    nigeria.image = @"Nigeria";
    [self.countries addObject:nigeria];
    
    Country *morocco = [[Country alloc] init];
    morocco.name = @"Morocco";
    morocco.currency = @"Dirham";
    morocco.region = @"Africa";
    morocco.language = @"Arabic";
    morocco.image = @"Morocco";
    [self.countries addObject:morocco];
    
    Country *kenya = [[Country alloc] init];
    kenya.name = @"Kenya";
    kenya.currency = @"Kenyan Shilling";
    kenya.region = @"Africa";
    kenya.language = @"Swahili";
    kenya.image = @"Kenya";
    [self.countries addObject:kenya];
    
    Country *senegal = [[Country alloc] init];
    senegal.name = @"Senegal";
    senegal.currency = @"Franc";
    senegal.region = @"Africa";
    senegal.language = @"French";
    senegal.image = @"Senegal";
    [self.countries addObject:senegal];
    
    Country *ghana = [[Country alloc] init];
    ghana.name = @"Ghana";
    ghana.currency = @"Ghana Cedi";
    ghana.region = @"Africa";
    ghana.language = @"Asante Twi";
    ghana.image = @"Ghana";
    [self.countries addObject:ghana];
    
    Country *congo = [[Country alloc] init];
    congo.name = @"Democratic Republic of Congo";
    congo.currency = @"French";
    congo.region = @"Africa";
    congo.language = @"Franc";
    congo.image = @"Congo";
    [self.countries addObject:congo];
    
    return self.countries;
}

@end
