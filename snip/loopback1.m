
@property (weak, nonatomic) LBRESTAdapter *adapter;


- (LBRESTAdapter *) adapter
{
    // cd /Users/mattschmulen/nodelife/strongloop/schedule/worklist/node/loop-back/yack/asteroid-sample-app
    // slnode run app.js
    
    //intializeAsteroid Adapter
    if( !_adapter)
    _adapter = [LBRESTAdapter adapterWithURL:[NSURL URLWithString:@"http://localhost:3000"]];
    //_adapter = [LBRESTAdapter adapterWithURL:[NSURL URLWithString:@"http://192.168.1.29:3000"]];
    return _adapter;
}

