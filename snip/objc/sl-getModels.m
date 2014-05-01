void (^loadErrorBlock)(NSError *) = ^(NSError *error) {
    NSLog( @"Error %@", error.description);
};//end selfFailblock

void (^loadSuccessBlock)(NSArray *) = ^(NSArray *models) {
    NSLog( @"selfSuccessBlock %d", models.count);
    self.tableData  = models;
    [self.myTableView reloadData];
};//end selfSuccessBlock

LBModelRepository *objectB = [[self adapter] repositoryWithModelName:prototypeName];

[objectB allWithSuccess: loadSuccessBlock failure: loadErrorBlock];
