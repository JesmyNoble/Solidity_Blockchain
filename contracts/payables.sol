// SDPDX-License-Identifier: MIT

pragma solidity ^0.8.30;  
contract myPayable {
    string public myString;
   // The payable modifier tells solidity that the function is expecting eth to receive in the smart contract. 
    function sendEth(string memory _name) public payable {
      if (msg.value==1 ether) {
        myString=_name;
      } else {
        payable (msg.sender).transfer(msg.value);  //Address of the sender get the amount transfered back
      }
      
        }
}