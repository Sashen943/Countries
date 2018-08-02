//
//  CountryTableViewCell.h
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *countryImage;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelDetail;

@end
