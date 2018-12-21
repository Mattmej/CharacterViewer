//
//  TableViewController.m
//  CharacterViewer
//
//  Created by Matt Mejia on 12/19/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

#import "FirstViewController.h"
#import "CharacterViewer-Swift.h"
#import "ServiceManager.h"

@interface FirstViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) CharacterViewModel *viewModel;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    

    
//    self.serviceManager = [[ServiceManager alloc] init];
//    [self.serviceManager getJSON:^{
//        [self.tableView reloadData];
//    }];
//    
    [self setupViewModel];
    [self setupTableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupTableView {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
   //  [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];

}

- (void)setupViewModel {
//    [self.viewModel ]
    
    self.viewModel = [[CharacterViewModel alloc] init];
    [self.viewModel getJSONWithCompletion:^{
        [self.tableView reloadData];
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//  MARK: - Set up TableView
/************************************************/

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CharacterTableViewCell *cell = (CharacterTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    
    // Table Testing
//    NSString *sectionString = [NSString stringWithFormat:@"%li", (long)indexPath.section];
//    NSString *rowString = [NSString stringWithFormat:@"%li", (long)indexPath.row];
//    cell.backgroundColor = [UIColor blueColor];
////    cell.textLabel.text = [NSString stringWithFormat:@"Section %@", sectionString, @"%@Row", rowString];
//    cell.textLabel.text = [[[@"Section " stringByAppendingString:sectionString] stringByAppendingString:@" Row"] stringByAppendingString:rowString];
    
    
    cell.characterName.text = @"Aardvark";
    return cell;
    
}

@end
