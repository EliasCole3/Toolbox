//Literals
var varName = 'lalala';
var varName2 = "lalalala";
var varName3 = 3;
var varName4 = true;


//Arrays
var array1 = [1, 3.0, 'lallaa'];
var deferredsArray = [];


//Adding to an array
deferredsArray.push('value');


//Object
var model = {
    propertyKey: 'Property Value',
    MethodName: function () { return "value"; },
}

//dynamically creating object property
object[propertyName] = propertyValue;


//getting the value of the first property in an object when you don't know the property's name
var obj = { first: 'someVal' };
obj[Object.keys(obj)[0]]; //returns 'someVal'


//Namespace
//delcare an object, then do namespaceObject.otherObjects


//Access object properties 
objectName.propertyName
objectName[propertyName]


//Calling an object method
model.getTableId();


//Concatenation
var newString = "<div>" + "</div>";
var secondString += "lalalaa";


//For loop
for (var i=0; i<cars.length; i++) { 
    text += cars[i] + "<br>";
}


//Foreach
array.forEach(function(entry, index, array){
  //stuff with each entry or index
}


//Accessing multidemensional array
var numeric = [
    ['input1','input2'],
    ['input3','input4']
];
numeric[0][0] == 'input1';
numeric[0][1] == 'input2';
numeric[1][0] == 'input3';
numeric[1][1] == 'input4';

var obj = {
    'row1' : {
        'key1' : 'input1',
        'key2' : 'inpu2'
    },
    'row2' : {
        'key3' : 'input3',
        'key4' : 'input4'
    }
};
obj.row1.key1 == 'input1';
obj.row1.key2 == 'input2';
obj.row2.key1 == 'input3';
obj.row2.key2 == 'input4';

var mixed = {
    'row1' : ['input1', 'inpu2'],
    'row2' : ['input3', 'input4']
};
obj.row1[0] == 'input1';
obj.row1[1] == 'input2';
obj.row2[0] == 'input3';
obj.row2[1] == 'input4';


//Switch
switch (element.attr("name")) {    
  case "case1":
    //code
    break;
  case "case2":
    //code
    break;
  default:
    //code
}


//Ternary if else operator
"The fee is " + (isMember ? "$2.00" : "$10.00")
var elvisLives = Math.PI > 4 ? "Yep" : "Nope";


//If else if else
if (time < 10) {
    greeting = "Good morning";
} else if (time < 20) {
    greeting = "Good day";
} else {
    greeting = "Good evening";
}


//executing an array of deferreds before executing a function
//https://api.jquery.com/jquery.when/
$.when.apply($, deferreds).done(function() {
  functionToExecute();
});


//Javascript sleep() equivalent using deferreds
function wait(ms) {  
  var deferred = $.Deferred();
  setTimeout(function(){deferred.resolve()}, ms);
  return deferred.promise();
}

wait(1500).then(function () {  
    // After 1500ms this will be executed
});


//programmatically add properties to an object
data[propertyName] = propertyValue;
http://stackoverflow.com/questions/1184123/is-it-possible-to-add-dynamically-named-properties-to-javascript-object


//removing an element from an array
var i = array.indexOf('keyToRemove');
if(i !== -1) {
  array.splice(i, 1);
}


//iterating over an object
for(var p in obj) {
  if(obj.hasOwnProperty(p)) {
    result += p + " , " + obj[p] + "\n";
  } 
}


//Manually resolving deferreds using JQuery
deferredsArray = [];
function fillStatus() {
  var deferred = $.Deferred();
  //do stuff
  deferred.resolve();
  return deferred.promise();
}
deferredsArray.push(fillStatus());
$.when.apply($, deferredsArray).done(function() {
  //do stuff after deferred is finished
});


//string replace
string = string.replace(/_/g, ' '); //need regex because the normal string replace only does the first one. replaces underscores with spaces


//taking something off the end of a string
output = output.substring(0, output.length - 2);


//saving a file
save: function(textToWrite, fileNameToSaveAs) {
  if(typeof(textToWrite) === 'object') {
    textToWrite = JSON.stringify(textToWrite);
  }
  var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
  var downloadLink = document.createElement("a");
  downloadLink.download = fileNameToSaveAs;
  downloadLink.innerHTML = "Download File";
  if (window.URL != null) {
    // Chrome allows the link to be clicked
    // without actually adding it to the DOM.
    downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
  } else {
    // Firefox requires the link to be added to the DOM
    // before it can be clicked.
    downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
    downloadLink.onclick = destroyClickedElement;
    downloadLink.style.display = "none";
    document.body.appendChild(downloadLink);
  }
  downloadLink.click();
}


//capitalizing the first letter of a string
capitalizeFirstLetter: function(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
},


//getting a random element out of an array and removing it
//enhances the base array, allowing for 
//var element = arrayName.popRandomElement();
  Array.prototype.popRandomElement = function () {
    var index = Math.round(Math.random() * (this.length - 1));
    var element = this[index];
    if (index > -1) {
      this.splice(index, 1);
    }
    return element;
  }
  
  
//returns a string with the current time
getCurrentTime: function() {
  var date = new Date();
  var hours = date.getHours();
  var minutes = date.getMinutes();
  var seconds = date.getSeconds();
  var milli = date.getMilliseconds();
  var returnString = hours + ":" + minutes + ":" + seconds + ":" + milli;
  return returnString;
},

//Working with an unknown number of deferreds
$.when.apply($, deferreds).always(function() {
  // console.log(arguments); //loop through this to get the results from the deferreds
});


//self documenting function for object
updateDocumentation: function() {
  var output = "/**\n";
  for(member in this) {
    if(typeof(this[member]) === "function") {
      output += " * " + member + "()\n";
    } else {
      output += " * " + member + "\n";
    }
  }
  output += " */";
  console.log(output);
},

//getting unique fields from one property given an array of objects
getUniqueFields: function(arrayOfObjects, field) {
  uniqueFields = [];
  arrayOfObjects.forEach(function(element, index, array) {
    if($.inArray(element[field], uniqueFields) === -1) { //if no jquery, replace with indexOf()
      uniqueFields.push(element[field]);
    }
  });
  return uniqueFields;
},


//wrapper for removing a key(int or string) from an array
remove: function(array, key) {
  if(typeof(key) === "number") {
    array.splice(i, 1);
    return array;
  } else if (typeof(key) === "string") {         
    var i = array.indexOf(key);
    if(i !== -1) {
      array.splice(i, 1);
      return array;
    } else {
      alert("that key doesn't exist");
      return array;
    }
  } else {
    alert("remove takes a number or a string as a parameter");
    return;
  }
},


//using the native filter method on array
function isBigEnough(value) {
  // return value >= 10; //alternatively
  if(value >= 10) {
    return true;
  }
}
var filtered = [12, 5, 8, 130, 44].filter(isBigEnough); //could also use an anonymous function here
// filtered is [12, 130, 44]

//setting a select element for a CRUD update using jquery
$("#select-id option").each(function() {
  this.selected = (this.value === critieria);
});


//jquery keypress
$('#searchbox input').bind('keypress', function(e) {
	if(e.which === 13) { //13 === enter, full list: https://css-tricks.com/snippets/javascript/javascript-keycodes/
		//code
	}
});

//setting a default value
//why not to use this format: http://www.codereadability.com/javascript-default-parameters-with-or-operator/
function eatFruit (fruit) {
    var fruit = fruit || "strawberry";
    ...
}

//ES6 default parameter
function eatFruit (fruit = "strawberry") {
    ...
}


//adding event handlers by class using plain old JS
var nodes = document.getElementsByClassName("classname");

var myFunction = function() {
  console.log("Called");
};

for(var i = 0; i < nodes.length; i++) {
  nodes[i].addEventListener('click', myFunction, false);
}


//jquery on/off namespacing
$(".ple-nullable").off("click.nullable-disable").on("click.nullable-disable", nullFunction); 


//popping and deleting a random element out of an array
  addPopRandomElement: function() {
    Array.prototype.popRandomElement = function () {
      var index = Math.round(Math.random() * (this.length - 1));
      var element = this[index];
      if (index > -1) {
        this.splice(index, 1);
      }
      return element;
    }
  },


//remove leading/trailing comma
var trim = str.replace(/(^,)|(,$)/g, "")