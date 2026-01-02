// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;  

contract Counter {
    uint public count =0;  // making the state variable 'public' will allow anyone to read the value of the variable. It acts like getCount function
    uint8 public count1 = 10; // uint8 means it can store value upto 255. So we can save gas by using uint                    
     string public mystring=  "dog" ;                
      bytes32 public myhash="my dog";
    
                     // can assign the value here itself so no need to call constructor
    // constructor () public {
    //     count=0;
    // }

function getCount () public view returns  (uint) { // Adding view means it is not adding gas to it. 
                                //Means this function just reading data
    return count;
}
function incrementCount() public {
    count ++;
}
function getValue () public pure returns (uint) {
    uint value =1 ; // Local variable
    return value;
}
}