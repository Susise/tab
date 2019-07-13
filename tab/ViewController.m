//
//  ViewController.m
//  tab
//
//  Created by 孙巧巧 on 2017/4/26.
//  Copyright © 2017年 孙巧巧. All rights reserved.
//

#import "ViewController.h"
#import "cust.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 200) style:UITableViewStyleGrouped];
    tab.delegate = self;
    tab.dataSource = self;
    tab.rowHeight = 44;
    tab.sectionFooterHeight = 0.01;
    tab.sectionHeaderHeight = 20;
    tab.tableHeaderView = [[UIView alloc] init];
    tab.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:tab];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    //哈哈哈
    
    //第二个哈哈哈
    
    //测试push 后撤回
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld%ld",indexPath.section,indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    cust *cus = [[cust alloc] init];
    [self.navigationController pushViewController:cus animated:YES];
    
}
- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 20)];
    view.backgroundColor = [UIColor whiteColor];
    return view;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
