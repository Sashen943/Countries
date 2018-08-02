//
//  CountryDetailsViewController.m
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountryDetailsViewController.h"
#import "Country.h"
#import "CountryDetailViewModel.h"

@interface CountryDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *countryImage;
@property (weak, nonatomic) IBOutlet UILabel *countryName;
@property (weak, nonatomic) IBOutlet UILabel *countryRegion;
@property (weak, nonatomic) IBOutlet UILabel *countrySubregion;
@property (weak, nonatomic) IBOutlet UILabel *countryLanguage;
@property (weak, nonatomic) IBOutlet UILabel *countryCurrency;
@property CountryDetailViewModel *countryDetailsViewModel;
@end

@implementation CountryDetailsViewController

- (void)viewDidLoad {
    [self setupViewModel];
    [super viewDidLoad];
}

- (void) setupViewModel {
    NSInteger index = *(self.index);
    self.countryDetailsViewModel = [[CountryDetailViewModel alloc] init: index];
    [self populateViews];
}

- (void) populateViews {
    self.countryImage.image = [UIImage imageNamed: self.countryDetailsViewModel.getDisplayableImage];
    self.countryName.text = self.countryDetailsViewModel.getDisplayableName;
    self.countryRegion.text = self.countryDetailsViewModel.getDisplayableRegion;
    self.countryLanguage.text =self.countryDetailsViewModel.getDisplayableLanguage;
    self.countryCurrency.text = self.countryDetailsViewModel.getDisplayableCurrency;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
