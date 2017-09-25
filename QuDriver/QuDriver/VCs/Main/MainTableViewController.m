//
//  MainTableViewController.m
//  QuDriver
//
//  Created by Chenmusong on 2017/9/25.
//  Copyright © 2017年 com.Qyueche. All rights reserved.
//

#import "MainTableViewController.h"

@interface MainTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ibUserIconImg;
@property (weak, nonatomic) IBOutlet UILabel *ibUserNameLab;
@property (weak, nonatomic) IBOutlet UILabel *ibStarEvaluationLab;//星级评价
@property (weak, nonatomic) IBOutlet UILabel *ibLayoutOfTheMonthLab;//本月排班
@property (weak, nonatomic) IBOutlet UILabel *ibThisMonthIncomeLab;//本月收入
@property (weak, nonatomic) IBOutlet UILabel *ibTheRemainingFlightsLab;//今日剩余班次
@property (weak, nonatomic) IBOutlet UILabel *ibNoSettlementLab;//未结算行程次数


@end

@implementation MainTableViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.tableView.tableFooterView = [UIView new];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userIconClick:)];
    [_ibUserIconImg addGestureRecognizer:tap];
    _ibUserIconImg.backgroundColor = [UIColor grayColor];
    
}
//点击啦用户头像
- (void)userIconClick:(UITapGestureRecognizer *)sender{
    BaseNavigationController *nav = [LoginViewController navigationControllerContainSelf ];
    [self presentViewController:nav animated:YES completion:nil];
}
//星级评价
- (IBAction)starEvaluation:(id)sender {
}
//本月排班
- (IBAction)thisMonthIncome:(id)sender {
}
//本月收入
- (IBAction)theRemainingFlights:(id)sender {
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0.01;
    }
    return 10;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
