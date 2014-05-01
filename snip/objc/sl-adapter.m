//@property (strong, nonatomic) LBRESTAdapter * adapter;
- (LBRESTAdapter *) adapter
{
    if( !_adapter)
        _adapter = [LBRESTAdapter adapterWithURL:[NSURL URLWithString:@"http://localhost:3000/api/"]];
        return _adapter;
}
