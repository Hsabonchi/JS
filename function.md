#### Function 
  ##### Why we need to use/learn function?
 

  - A key principle to consider when developing your applications is to not repeat code unnecessarily. 
     This is commonly known as the DRY principle: Don't Repeat Yourself.(reusability)
     
     
    • Creating a new function gives you an opportunity to name a group of statements, makesyour program easier to read and debug.
    
    • Functions can make a program smaller by eliminating repetitive code. Later, if you make a
      change, you only have to make it in one place.
      
    • Dividing a long program into functions allows you to debug the parts one at a time and then
      assemble them into a working whole.
    
    • Well-designed functions are often useful for many programs. Once you write and debug one,
    y ou can reuse it
  
  
  #### Functions
  
   <p> Functions are reusable blocks of code that have a name, may take in arguments, perform some 
    operations on those arguments, and may return a new value. Breaking complex tasks into smaller, 
    clearly labelled functions will also make them easier to read
    and comprehend. Functions can be thought of as building blocks for a program. 
</p>

####  Defining functions
  Important Notes : define a function before use it.
  
  <pre>
  
  A function definition (also called a function declaration, or function statement) consists of the 
  
  - `function keyword`, followed by: The name of the function.
  
  - A list of parameters (optional )to the function, enclosed in parentheses and separated by commas.
  
  -  The JavaScript statements that define the function, enclosed in curly brackets, {...}.
  
  - `return keyword` specifies the value returned by the function (optional) and should be defiene in {......}  .
  
  
   3 + 4 is 7
   2 + 5  is also 7
   
   How about creating a function called add 
      - add function accepts/takes two variables x and y as arquments 
      - return the result of addind x + y.
      - 
      
      function add (x,y){
      
            return x+y
        }
        
     // In order to use/try/test the add function
        
       add (3,4)  ---> return 7  
   
  
  
 </pre>
