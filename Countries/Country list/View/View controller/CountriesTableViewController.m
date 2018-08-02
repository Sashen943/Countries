//
//  CountriesTableViewController.m
//  Countries
//
//  Created by Sashen Pillay on 2018/08/01.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

#import "CountriesTableViewController.h"
#import "CountriesViewModel.h"
#import "CountryTableViewCell.h"
#import "CountryDetailsViewController.h"

@interface CountriesTableViewController ()
@property (strong, nonatomic) NSMutableArray<Country *> *countries;
@property CountriesViewModel* countriesViewModel;
@end

@implementation CountriesTableViewController

- (void)viewDidLoad {
    [self setupViews];
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) setupViews {
    self.countriesViewModel = CountriesViewModel.new;
    [self.countriesViewModel initialize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CountryTableViewCell *cell = CountryTableViewCell.new;
    cell = (CountryTableViewCell*) [tableView dequeueReusableCellWithIdentifier:@"cellid" forIndexPath:indexPath];
    cell.labelName.text = [self.countriesViewModel getDisplayableName:indexPath.row];
    cell.labelDetail.text = [self.countriesViewModel getDisplayableRegion:indexPath.row];
    cell.countryImage.image = [UIImage imageNamed: [self.countriesViewModel getDisplayableImage:indexPath.row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString * storyboardIdentifier = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardIdentifier bundle: [NSBundle mainBundle]];
    CountryDetailsViewController * countryDetailsViewController = [storyboard instantiateViewControllerWithIdentifier:@"CountryDetailsViewController"];
    NSInteger index = (NSInteger) indexPath.row;
    countryDetailsViewController.index = &(index);
    [self presentViewController:countryDetailsViewController animated:YES completion:nil];
}

@end
