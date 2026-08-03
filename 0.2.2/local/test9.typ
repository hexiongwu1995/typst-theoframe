#set math.equation(numbering: "1.1.")
= Test
//Works
$ x + 1 $ <eq>
This is @eq and it works

//Works
#context [
  $ x + 2 $ <eq2>
  This is @eq2 and it works
]

//Does not work
#context $ x + 3 $ <eq3>
// This is @eq3 and it dowes not work // <-- raises an error