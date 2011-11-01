//-----------
//Native JSON
//-----------
JSON.parse("[1, 2, 3, 4, {\"a\":\"bugaga\", \"b\":[5,6,7]}]"); // -> Array object

JSON.stringify({
    ten: 10,
    arr: [1, 2, 3, {a:15}]
}); // -> "{"ten":10,"arr":[1,2,3,{"a":15}]}"



//-----------
//Array.*
//-----------
[1,2,3,4,5,4,3,2,1].indexOf(4) === 3; // -> True
[1,2,3,4,5,4,3,2,1].indexLastOf(4) === 5; // -> True

var evenGtFive = function(elem, index){
  return elem > 5 && elem % 2 == 0;  
};

[1,2,3,4,5,6,7,8,9,10].every(evenGtFive); // -> False
[6,8,10].every(evenGtFive); // True
[1,2,3,4,5,6,7,8,9,10].some(evenGtFive); // True
[1,2,3,4,5,7,9].some(evenGtFive); // False
[1,2,3,4,5,6,7,8,9,10].filter(evenGtFive); // [6,8,10]

[1,2,3,4,5,6,7,8,9,10].map(function(elem, index){
    return (elem + 3) * 2;
}); // [8, 10, 12, 14, 16, 18, 20, 22, 24, 26]



// -- String, Array generics. FF > 2 only!!!!!
var str = "Hello There how Are you";
Array.map(str, function(elem, index){
    return elem > 'e'?elem.toUpperCase():elem;
}).join(""); // -> "HeLLO THeRe HOW ARe YOU"



//-----------
//Function.prototype.bind
//-----------
var x = 9; 
var module = {
  x: 81,
  getX: function() { return this.x; }
};

module.getX(); // 81

var getX = module.getX;
getX(); // 9, "this" === global object

// this --> object
var b = {x:51};
var boundGetX = getX.bind(module);
var boundGetB = getX.bind(b);
boundGetX(); // 81
boundGetB(); //51



//Currying
var plusFunc = function plus(a,b){
    return a + b;
};
var inc = plusFunc.bind(undefined, 1);
inc(5); //6



//-----------
//Object.*
//-----------

//---- DEfining Property
var o = {};

var winner_property = {
    enumerable : true,
    configurable : true,
    get: function(){
        console.log("And the winner is:");
        
        return "John Bobson";
    },
    set: function(){
        console.log("No no no, you can't cheat me.");
    }
};

var ultim_answer_property = {
    value: 42
}; //write: false, enum: false, change: false, delete:false

Object.defineProperty(o, "winner", winner_property);
Object.defineProperty(o, "ultim_answer", ultim_answer_property);

o.winner; //print "And the winner is:" and returns John ...
o.ultim_answer; //42

o.ultim_answer = 52; //Dont affect
o.ultim_answer; //Nothing happend. Still 42.


// -- Create
var parent = {author: 'Me'};
var child = Object.create(parent, {
    anything:{
        value:'something'
    },
    something:{
        value:'everything',
        writable: true, 
        enumerable: true, 
        configurable: true
    }
});
child.anything; // "something"
child.anything = 10;
child.anything; // "something"

child.something; // "everything"
child.author; // "Me"


//Keys
var object = {a:10, b:20, 10: 20};
Object.keys(object); // -> ["10", "a", "b"]


//getOwnPropertyNames
Object.getOwnPropertyNames(child); //["anything", "something"], No "author"


//seal
var obj1 = {foo: 10, bar:20};
delete obj1.foo; // -> true

Object.seal(obj1);
Object.isSealed(obj1); // -> true

delete obj1.bar; // -> false
obj1.bar; //Still exists === 20

obj1.bar = 10; // works
Object.defineProperty(obj1, 'bar', {set: function(){}}); //Throws Error.

//Object.freeze
//Same as Seal, but you can't even change properties


