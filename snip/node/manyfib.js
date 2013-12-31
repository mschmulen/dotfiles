//app.get('/fib/:num', fib.getFib );

function fib(n) {
 if ( n < 2 ) { return 1; }
 else { return fib(n-2) + fib(n-1);}
}//end fib

function fib2(n) {
  var half = Math.floor((n-1)/2);
  for(var i = 0, a = 0, b = 1; i < half; i++,b+=(a+=b)) {}
  return n%2==0 ? b : a;
}

function fib3(n)
{
  var half = Math.floor((n-1)/2);
  for(var i = 0, a = 0, b = 1; i < half; i++,b+=(a+=b)) {}
  return n%2==0 ? b : a;
}//end fib3

exports.getFib = function(req, res) {
 console.log(req.params);
 var n = parseInt(req.params.num);
 console.log('calculate fib for : ' + n);
 var result = fib( n );
 res.jsonp( result );
};


