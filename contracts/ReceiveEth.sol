// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30; 
contract myeth {
    uint public lastvalueSent;
    string public lastmethodcalled;
    address public myAddress;
 receive () external payable {
    lastvalueSent=msg.value;
    myAddress=msg.sender;
    lastmethodcalled="receive";
 }
 fallback() external payable { 
    lastmethodcalled="fallback";
    lastvalueSent=msg.value;
      lastmethodcalled="fallback";
  
 }
}

//When receive and fall back exist :
//RECEIVE
//receive is called then contract receive Ether.
// When callback function called with no data and no value then receive function is called.
//When callback functin called with no data and with value then receive function is called.
//FALLBACK
//// When callback function called with hexadecimal data and no value then fallback function is called.
// When callback function called with hexadecimal data and with value then fallback function is called.
// when there is no function to receive ether , then fallback function will be called.- >  fallback external {}
// when there is no function to receive ether , and but need to receive a ether , then fallback will be called  but with payable .-> fallback external payable{}
