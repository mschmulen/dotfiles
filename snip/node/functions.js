
//flora and fauna of javascript functions

//fist there were functions
//anonymous function
function() {
  console.log('hello');
}

//then he called them
//anonymous function, invoked in-place
(function() {
  console.log('hello');
})();

//then he named them
//named function
function myFunction() {
  console.log('hello');
}
myFunction();


//then he scoped them,
function myFunction() {
  console.log('hello');
}

(function() { 
  myFunction();
})();





