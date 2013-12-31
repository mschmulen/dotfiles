

function fib(n) {
  if ( n < 2 ) { return 1; }
  else { return fib(n-2) + fib(n-1);}
}//end fib

function handleRequest(req, res) {
  res.writeHead(200, {'content-type':'text/plain'});
   
  res.write('hello ' + fib(24) );
  console.log('done!');
  res.end(); 
};

require('http').createServer(handleRequest).listen(8080);




