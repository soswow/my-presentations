#
#        sSSs    sSSs_sSSs      sSSs    sSSs    sSSs    sSSs          
#       d%%SP   d%%SP~YS%%b    d%%SP   d%%SP   d%%SP   d%%SP        
#      d%S'    d%S'     `S%b  d%S'    d%S'    d%S'    d%S'          
#      S%S     S%S       S%S  S%S     S%S     S%S     S%S           
#      S&S     S&S       S&S  S&S     S&S     S&S     S&S           
#      S&S     S&S       S&S  S&S_Ss  S&S_Ss  S&S_Ss  S&S_Ss        
#      S&S     S&S       S&S  S&S~SP  S&S~SP  S&S~SP  S&S~SP        
#      S&S     S&S       S&S  S&S     S&S     S&S     S&S          
#      S*b     S*b       d*S  S*b     S*b     S*b     S*b           
#      S*S.    S*S.     .S*S  S*S     S*S     S*S.    S*S.         
#       SSSbs   SSSbs_sdSSS   S*S     S*S      SSSbs   SSSbs        
#        YSSP    YSSP~YSSY    S*S     S*S       YSSP    YSSP        
#                             SP      SP                            
#                             Y       Y                             
#                                                                  
#        sSSs    sSSs   .S_sSSs     .S   .S_sSSs    sdSS_SSSSSSbs  
#       d%%SP   d%%SP  .SS~YS%%b   .SS  .SS~YS%%b   YSSS~S%SSSSSP  
#      d%S'    d%S'    S%S   `S%b  S%S  S%S   `S%b       S%S       
#      S%|     S%S     S%S    S%S  S%S  S%S    S%S       S%S       
#      S&S     S&S     S%S    d*S  S&S  S%S    d*S       S&S       
#      Y&Ss    S&S     S&S   .S*S  S&S  S&S   .S*S       S&S       
#      `S&&S   S&S     S&S_sdSSS   S&S  S&S_sdSSS        S&S       
#        `S*S  S&S     S&S~YSY%b   S&S  S&S~YSSY         S&S       
#         l*S  S*b     S*S   `S%b  S*S  S*S              S*S       
#        .S*P  S*S.    S*S    S%S  S*S  S*S              S*S       
#      sSS*S    SSSbs  S*S    S&S  S*S  S*S              S*S       
#      YSS'      YSSP  S*S    SSS  S*S  S*S              S*S       
#                      SP          SP   SP               SP        
#                      Y           Y    Y                Y         


# speachy-speachy By Aleksandr Motsjonov


## What is CoffeeScript?


(say = console.log) "* CoffeeScript is litle programming language, that compiles to JavaScript"


# * What is The Golden rule?


say "* CoffeeScript is just a JavaScript (but with more sugar in it)"           #This mean you can write CoffeeScript everywhere where you use to write JavaScript.
                                                                                #On the Client side or on the server side code, which runs with node.js for example.
# What it gives to me?
# - Very-very neat features and sugars
# - It handles some of many JS "WAT!" moments
# - It's much sexier!

# Givit 2 me baby, aha aha!


fibonacci = (n) ->
  if n is 0
    1
  else
    fibonacci(n-2) + fibonacci(n-1)

    
#or in one line
fibonacci = (n) -> if n is 0 then 1 else fibonacci(n-1) + fibonacci(n+1)

# Many feature are similar for Ruby, Python, other langs. 

# * How it looks compiled?

##
##Features demonstration
##

# ---------------
# * No "var", No smicolon, implicite scope, global scope                        # You should'n write "var" anymore anyewhere,
                                                                                # Becase var will be added to the nearest (smallest)  
                                                                                # scope it finds.
say "No to VARs and global Scope!"                                              # Also the whole body of one script is placed implicitly
                                                                                # in the anonymous function call, which makes whole code
                                                                                # global scope unreachable.
#Ex:
myvar = 10


# ---------------
# * No {} (curly braices), No "function" keyword and statement


#Ex:
twiceAs = (number) -> number * 2
twenty = twiceAs 10
if twenty > 15
  console.log "Hi!"

#>> twenty == 20
#>> Hi!


# ---------------
# * Function call wihtout () brackets, no "return" statement needed

#Ex.: Modify previous example


# ---------------
# * Default function argument values, splats (varargs), reversed splats

# Ex: Splats
set = (values...) ->
  values: values 
  length: values.length

set1 = set 10, 20, 30

#>> { values: [ 10, 20, 30 ],
#     length: 3 }


# Ex: Default values
register = (fname = "[First Name]", sname = "[Second Name]") ->
  console.log "#{fname} - #{sname}"

register()
register "Aleksandr"

#>> [First Name] - [Second Name]
#>> Aleksandr - [Second Name]


# Ex: Reversed Splats
dbResult = ["Aleksandr", "Motsjonov"]
register dbResult...

#>> Aleksandr - Motsjonov


# ---------------
# * Ways to write object and arrays

# Ex: Modify first "Splats" example


# ---------------
# * Every statement is an expression

#Ex. 1:
answer = 50

decision = 
  if answer is 42
    "kill the world"
  else
    "wait for an answer ... "

#>> decision == "wait for an answer ... "


#Ex. 2:
process = (list) ->
  for item in list
    twiceAs item

console.log process [1,2,3,4]

# >> [2,4,6,8]


#Ex. 3: or as List comprehention
process = (list) -> (item * 2 for item in list)


# ---------------
# * Array slicing [1..2], [3...6]

#Ex.:
list = ["a","b","c","d","e","f","g","h"]

list[2..5]  #>> [ 'c', 'd', 'e', 'f' ]
list[2...5] #>> [ 'c', 'd', 'e' ]

list[2..3] = ["x","y","z"]

#>> list == [ 'a', 'b', 'x', 'y', 'z', 'e', 'f', 'g', 'h' ]

[1..6] #>> [ 1, 2, 3, 4, 5, 6 ]


# ---------------
# * nice condition form, and, or, is (===), in

#Ex.:
eat = (smth) ->
  return unless isEatable(smth)   #Ruby style conditions
  # ... rest code
  if smth.type is 'muffin' and 
    smth.filling isnt 'chocolate' and 
    smth.size in ['L', 'XL']
    
    doTheJob()


# ---------------
# * The Existential Operator ?. and ?()

#Ex.:
existedVariable = "go go go"
if existedVariable?     # isnt null and isnt undefines
  existedVariable += "!"

#Ex.:
zip = lottery.drawWinner?().address?.zipcode


# ---------------
# * Classes - simple abstraction @, super, ::

#Ex.:
class Human
  constructor: (@name) ->
  
class Boy extends Human
  constructor: (args...) ->
    super(args...)
    @canPeeUpright = true
  
  growBeard: (len) ->
    console.log "Growing beard #{len}cm long."
    #Do the bread growing
    
boy1 = new Boy("Peter")
# boy1.canPeeUpright == true

boy1.growBeard(10)
#>> Growing beard 10cm long.

# Change "name" to @name in 


# ---------------
# * Distructoring assignment (unboxing)

#Ex.:
getBiggestSalary = ->
  result = makeVeryNastyRequest()
  [result.name, result.money]

[basAssName, basAssSalery] = getBiggestSelery()

#>> basAssName == "Aleksandr"
#>> basAssSalery = 1000000$     #Yeah, you wish!

complicatedHash = ->
  propertyOne: 1
  propertyTwo: 2
  
{propertyOne} = complicatedHash()

#>> propertyOne == 1
  
# * "something #{variable} there"
[num, animal] = [2, "Squirrel"]
"#{animal} has #{num} nuts"

# * So, Pros and Cons?
# Pros:
# - Very-very neat features and sugars
# - It handles some of many JS "WAT!" moments
# - It's much sexier!
# Cons:
# - Can be difficult to read if too much sugar added
#   https://github.com/documentcloud/underscore/blob/master/underscore.js
#   https://github.com/jquery/sizzle/blob/master/sizzle.js
# - Too much magic, less explicitness
# - Debugging (let's see the compiled code)
# - One more compile step (not for RoR or Play 2)
# - "Why?"