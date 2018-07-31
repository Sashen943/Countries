//
//  ViewController.m
//  Countries
//
//  Created by Sashen Pillay on 2018/07/29.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountriesViewController.h"
#import "CountriesViewModel.h"
#import "CountryTableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray<Country *> *countries;
@property CountriesViewModel* countriesViewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [self setupViews];
    [super viewDidLoad];
}

- (void) setupViews {
    self.countriesViewModel = CountriesViewModel.new;
    [self.countriesViewModel initialize];
    self.navigationItem.title = @"Countries";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    [self.tableView registerClass:CountryTableViewCell.class forCellReuseIdentifier:@"cellid"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CountryTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"cellid" forIndexPath:indexPath];
    cell.contentMode = UIViewContentModeRight;
    cell.countryNameLabel.text = [self.countriesViewModel getDisplayableName:indexPath.row];
    cell.detailTextLabel.text = [self.countriesViewModel getDisplayableRegion:indexPath.row];
    cell.imageView.image = [UIImage imageNamed: [self.countriesViewModel getDisplayableName:indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


@end
