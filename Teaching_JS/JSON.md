JSON (JavaScript Object Notation)

- Used as a data exchange format.
- Can  be used directly in JavaScript.

- to make it easier for other languages to parse json objects(Data parsing is a method where one string of data gets converted into a different type of data.)
  - String are double quoted .
  - Property keys are strings.
  
  <pre>
      POST/products HTTP/1.1.         <--- this URI represents a collections of products
      Host:localhost:8080
      User-Agent: Mozilla/5.0 ...
      Accept: application/xml
      Accept-Encoding: gzip,deflate
      Accept- Charset:utf-8
      Content-Type: application/json   <-- Tells the server to format the objects in JSON format
      
      GET      /users        /{id} --->response
      Action   Resource      ParameterResult
  </pre>

