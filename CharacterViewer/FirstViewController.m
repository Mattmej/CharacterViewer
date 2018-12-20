//
//  TableViewController.m
//  CharacterViewer
//
//  Created by Matt Mejia on 12/19/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Table Testing
//    NSString *sectionString = [NSString stringWithFormat:@"%li", (long)indexPath.section];
//    NSString *rowString = [NSString stringWithFormat:@"%li", (long)indexPath.row];
//    cell.backgroundColor = [UIColor blueColor];
////    cell.textLabel.text = [NSString stringWithFormat:@"Section %@", sectionString, @"%@Row", rowString];
//    cell.textLabel.text = [[[@"Section " stringByAppendingString:sectionString] stringByAppendingString:@" Row"] stringByAppendingString:rowString];
    
    
    
    return cell;
    
}

@end
