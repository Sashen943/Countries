//
//  CountryTableViewCell.h
//  Countries
//
//  Created by Sashen Pillay on 2018/07/30.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryRegionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *countryImage;
@end
