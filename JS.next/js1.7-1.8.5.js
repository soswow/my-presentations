function print(msg){
  console.log(msg);
}

// !!!!!!!!!!!
// All this in FF 1.7, 1.8, 1.8.5 and possible in ES6
// !!!!!!!!!!!

//===========
print("---------- Generators -----------");
//===========

function fib() {
  var i = 0, j = 1;
  while (true) {
    var message = (yield i);
    print(message);
    var t = i;
    i = j;
    j += t;
  }
}

print("Simple iteration with .next()");
var g = fib();
print(g.next());
for (var i = 0; i < 10; i++) {
  print("Fib: " + g.send("Kuku - - - "+i));
}


//===========
print("----------Iterators-----------");
//===========


var obj = {name:"Jack Bauer", username:"JackB", id:12345, agency:"CTU",
            region:"Los Angeles"};

var it = Iterator(obj);
try {
  while (true) {
    print(it.next());
  }
} catch (err if err instanceof StopIteration) {
  print("End of record.\n");
} catch (err) {
  print("Unknown error: " + err.description + "\n");
}

print("\n---- simpler -----\n\n");

var it = Iterator(obj);
for(var pair in it){
  print(pair[0] + " - " + pair[1]);
}



//===========
print("----------Array Comprehensions-----------");
//===========


var arr = [1,2,3,4,5,6];
print(      [i * i for each (i in arr)]     );
print(      [i * i for each (i in arr) if (i > 3)]     );


//===========
print("----------Let-----------");
//===========


print("Let statement (конструкция)");
var x = 5, y = 0;
let (x = x + 10, y = 12) {
  print(x + y);
}
print(x + y);


print("let expressions (выражение)");
var x = 5, y = 0;
print( let(x = x + 10, y = 12) x + y);
print(x + y);


print("let definitions");
var x = 10;
for(var i = 0; i<5;i++){
  let x = 2;
  print(i + x);
}
print("Unscoped x: " + x);

{
  let x = 20;
  print ("Scoped: " + x);
}
print("Unscoped x: " + x);



//===========
print("----------Destructuring assignment-----------");
//===========



var a = 1, b = 2;

print(a + " " + b);

[a, b] = [b, a];

print(a + " " + b);

function fib() {
  var i = 0, j = 1;
  while (true) {
    yield i;
    [i, j] = [j, i + j];
  }
}

print("Multivalue return");

function f() {
  return [1, 2, 3];
}

var [a,b,c] = f();
print(a);
print(b);
print(c);

//Just cool stuff
let obj = { width: 3, length: 1.5, color: "orange" };

for (let [name, value] in Iterator(obj)) {
  print (name + " - " + value);
}
//end of cool staff

print("Object unpacking in function argument");

function whois({
                 displayName: displayName,
                 fullName: {
                   firstName: name
                 }
               }){
  print(displayName + " is " + name);
}

var user = {id: 42, displayName: "jdoe",
              fullName: {
                firstName: "John",
                lastName: "Doe"
            }};

whois(user);



//===========
print("---------- JavaScript 1.8, 1.8.5 .. FF 3,4 -----------");
//===========

print("Expression closures");

function pow(x) x * x;

print(pow(10));

var arr = [1,2,3,4,5,6,7,8,9,10];

print (arr.filter(function (a) a > 5 && a % 2 === 0));

//Getters and setters
var obj = {
  a: 10,

  get b() {
    return 15;
  },
  set c(value) {
    this.g = value;
  }
};

print(obj.b);
obj.c = 20;
print(obj.g);
