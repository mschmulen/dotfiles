describe('Es6generators', function(){
  var es6generators;
  
  beforeEach(function(){
    es6generators = new Es6generators;
  });
  
  describe('.myMethod', function(){
    // example sync test
    it('should <description of behavior>', function() {
      es6generators.myMethod();
    });
    
    // example async test
    it('should <description of behavior>', function(done) {
      setTimeout(function () {
        es6generators.myMethod();
        done();
      }, 0);
    });
  });
});

