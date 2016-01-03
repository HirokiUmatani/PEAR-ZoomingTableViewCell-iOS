//
//  ViewController.m
//  ZoomingTableViewCelll
//
//  Created by hirokiumatani on 2016/01/03.
//  Copyright © 2016年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZoomingTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ZoomingTableViewCell" forIndexPath:indexPath];
    cell.delegate = self;
    return cell;
}

- (void)setTableView
{
    UINib *nib = [UINib nibWithNibName:@"ZoomingTableViewCell" bundle:nil];
    [_tableView registerNib:nib forCellReuseIdentifier:@"ZoomingTableViewCell"];
}
#pragma mark - UITableViewDelegate

#pragma mark - ZoomingTableViewCellDelegate
- (void)touchWithCell:(UIView *)zoomView
{
    [self.view addSubview:zoomView];
}
@end
