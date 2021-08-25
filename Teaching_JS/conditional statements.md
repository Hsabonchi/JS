<p> 
    
 Conditional statement is common across many programming languages. Although the syntax varies from language to language, the basic structure (in pseudocode form) looks like this:</p>
 


<pre>

   Conditional statements are the way computers can make decisions. Conditional statements always have an if part, which tells 
   the app or program in general what to do when the condition is true. 
   
   Conditional statements also usually have an else part, which tells the app or program in general what to do when the condition is false.

    Conditions Type:
    
     If statement: is used to specify a block of code to be executed, if a specified condition is true.
     If - else statement: is used to specify a new condition to test, if the first condition is false then it will be redirected to the else part.
     
     <hr>
     
     Logical conditions: Are features of programming languages "conditional statement", we will list them below:-
     
        Review Logical Condition:
        =========================
        
         Less than: a < b
         Less than or equal to: a <= b
         Greater than: a > b
         Greater than or equal to: a >= b
         Equal to a == b
         Not Equal to: a != b
         
        Notes:  boolean condition returns a true or false value
           if true then do .....
           if (boolean condition) is not true ,then check  ...
           it starts from the top looking for expressions that evaluate to true.
           
==================================================================================

    
    If (boolean condition) Then
        (consequent)
    Else
        (alternative)
    End If
    
    - JavaScript
 ================================================   
    
    Ex1:
    ===
    
    if (password ==== "******") {
      console.log("Wellcome to .....!");
    } else {
      console.log("WRONG Password!");
    }
    
============================================
     
     Ex2:
     ====
     
       a=1
       b=9
       
       if (b > a ){
         console.log("b is greater than a .....!");
       }else{
            console.log("b is greater than a .....!");       
       }
         - Substitute b with 9 and a with 1
         - 9 > 1 yes means true
         - if the condition(9 > 1) is true then 
         - without looking and else{.....} 
           
         
  </pre>
  
