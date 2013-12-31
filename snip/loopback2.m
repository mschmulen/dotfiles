@synthesize tableData  = _tableData;
- (NSArray *) tableData
{
    if ( !_tableData) _tableData = [[NSArray alloc] init];   // [NSArray arrayWithObjects:@"one", @"two", @"three", @"four", nil];
    return _tableData;
};


