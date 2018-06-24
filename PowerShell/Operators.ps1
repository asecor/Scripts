#Comparison Operators
-like               like
-notlike            notlike
-eq                 equal
-ne                 not equal
-gt                 greater than
-lt                 less than
-ge                 greater than or equal
-le                 less than or equal
-contains           contains a value
-notcontains        does not contain a value
EX: get-service | Where-object name -eq ALG   
EX: "5 -gt 3" returns "True"
   
#Arithmetic Operators
* multiplication
/ Division
+ Addition
- Subtraction
% Modulo
Ex: $free = $size - $used

#Logical Operators
-And "All Parts of the expression must be true"
-or "Any part of the expression must be true
-xor "Logical exclusive or. True when one expression is true and one is false"
-Not Logical not

#Assignment Opperator
= "Assign a value"
+= "Add a new value to an axisting value"
-= "Subtract a value from an axisting value"
*= "Multiply a  value from an axisting value"
/= "Divide a value from an existing value"
++ "Increase the value by 1"
-- "Decrese the value by 1"

#Type Operators
-Is "Test if an object is a certain type. Returns true or false"
-IsNot "Test if an object is not a certain type. Returns true or false"
-As "Force Powershell to treat one type as another. Known as coercion"
EX: "$i=3" "$i -is [int]"

#Special Operators
& "Call (run) a string. No parameter parsing." 
.. Range of numbers"
ex: "$c="netstat"" "&$c"

#Split and join operators
-split 
-join
ex: this is complicated.