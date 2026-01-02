// SPDX-License-Identifier: GPL-3.0
/*
View     : Adding view means it is not adding gas to it.
require  :  define under a function. This will not execute following step if it fails.
/RECEIVE
//receive is called then contract receive Ether.
// When callback function called with no data and no value then receive function is called.
//When callback functin called with no data and with value then receive function is called.
//FALLBACK
//// When callback function called with hexadecimal data and no value then fallback function is called.
// When callback function called with hexadecimal data and with value then fallback function is called.
// when there is no function to receive ether , then fallback function will be called.- >  fallback external {}
// when there is no function to receive ether , and but need to receive a ether , then fallback will be called  but with payable .-> fallback external payable{}

Payable() : Use when you have a named function (like deposit()) that should accept ETH, often with other parameters
Receive ()  : A special, unnamed "payable function" that executes if a user sends ETH directly to the contract address without calling any other specific function (often preferred for simplicity when the contract's main job is just to receive funds). : A contract with a receive() function to hold funds until conditions are met. 
deposit() : A deposit() payable function collects ETH for a project.
*/