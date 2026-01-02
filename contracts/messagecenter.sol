// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;  
contract messeges {
    address public Owner;
    string public message;
    string public greetings="Hello ";
    uint public changeCounter;
    constructor() {
         Owner=msg.sender;    
    }
    function updateMessage(string memory _localMessage) public {
       if(Owner==msg.sender) {
        message=_localMessage;
        message=string(abi.encodePacked(greetings,message));
        changeCounter ++;
       }
      
    }
}