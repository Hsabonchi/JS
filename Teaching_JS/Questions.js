// Write a function to find the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.

//Sol

/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function(strs) {
let prefix=""

 
    
for (var i=0;i<strs[0].length;i++){
     let prefixtemp=strs[0].charAt(i);
    
     // if (strs.length ==1)
     //      return strs[0]
    
    
    for (var j=1;j<strs.length;j++){
         if(strs[j].charAt(i)!==prefixtemp){
           return prefix
         }  
     }

       prefix+=""+strs[0].charAt(i)
    
}
return prefix
    
};
