//
//  CountriesViewModel.h
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountriesRepository.h"
#import "Country.h"

@interface CountriesViewModel : NSObject
@property  CountriesRepository* countriesRepository;
@property (strong, nonatomic) Country* countries;

- (void) initialize;
- (NSString*) getDisplayableName:(NSInteger)index;
- (NSString*) getDisplayableCurrency:(NSInteger)index;
- (NSString*) getDisplayableRegion:(NSInteger)index;
- (NSString*) getDisplayableImage:(NSInteger)index;
- (NSString*) getDisplayableLanguage:(NSInteger)index;
- (Country*) getCountry:(NSInteger)index;
- (NSInteger) getCount;

@end
