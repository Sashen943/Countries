//
//  CountryDetailViewModel.h
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"
#import "CountryDetailsRepository.h"

@interface CountryDetailViewModel : NSObject
@property  CountryDetailsRepository* countryDetailsRepository;
@property  Country* country;

- (void) initialize:(NSInteger) index ;
- (NSString*) getDisplayableName;
- (NSString*) getDisplayableCurrency;
- (NSString*) getDisplayableRegion;
- (NSString*) getDisplayableImage;
- (NSString*) getDisplayableLanguage;
- (instancetype)init:(NSInteger) index;
@end
