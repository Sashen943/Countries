//
//  Country.h
//  Countries
//
//  Created by Sashen Pillay on 2018/07/29.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject
@property(strong, nonatomic) NSString *name;
@property(strong, nonatomic) NSString *currency;
@property(strong, nonatomic) NSString *language;
@property(strong, nonatomic) NSString *region;
@property(strong, nonatomic) NSString *subregion;
@property(strong, nonatomic) NSString *image;
@end
