
standup instructions

(http://www.sitepoint.com/kickstart-your-angularjs-development-with-yeoman-grunt-and-bower/)

Install yo, grunt and bower :

1. npm install -g yo grunt-cli bower

2. install some usefull generators in this case angular
	npm install -g generator-angular
	
3. standup your angular app ( You can answer yes to include Twitter’s bootstrap. )
	yo angular 

4. Support Bower convention convention change of component.json files to bower.json files.
```
small change to our Bower config in .bowerrc so open it up and add the following line:

  {
      "directory": "app/components",
      "json": "bower.json" // Add this line
  }
```

5. Install the bootstap javascript that works with angular 
 $bower install angular-bootstrap --save
( The –save flag tells bower to add this to our bower.json file as a dependency )

yeoman init angular ngSignIt



Misc notes :

yeoman.io/insight.html & http://yeoman.io
