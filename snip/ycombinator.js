
//http://kestas.kuliukas.com/YCombinatorExplained/

var y = function(le) {
	return function(f) { 
		return f(f); 
	}(function(f) {
		return le(
			function(x) { return (f(f))(x); }
		);
	});
};

/*
var fact = function(n) {
	if( n < 2 ) return 1;
	else return n*fact(n-1);
};


var makeFact = function(givenFact) {
	var fact=function(n) {
		if( n < 2 ) return 1;
		else return n * givenFact(n-1);
	}
	return fact;
};

var makeRealFact = function(makeFact) {
	var tryFact=function(n) {
		var nextTryFact = makeFact(tryFact);
		return nextTryFact(n);
	};
	return makeFact(tryFact);
};


*/
