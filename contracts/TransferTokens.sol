// SPDX-License-Identifier: GPL-3.0
// Transfer Tokens between accounts in Solidity
pragma solidity ^0.8.30; 

contract transferToken {
    uint public total_amount;
    mapping(address => uint) public balanceof;  // Mapping to store balances of addresses)
    string public name="Transfer"; // Name of the contract
    string public symbol="TFT"; // Symbol of the contract
    constructor (uint initialSupply) {
        total_amount=initialSupply;
        balanceof[msg.sender]=total_amount;
    }
   function transfer(address toWhom, uint amount) public returns  (bool success){
      
        require(balanceof[msg.sender]>=amount ,"Insufficient Amount");
        total_amount= balanceof[msg.sender];
        balanceof[msg.sender]-=amount;  // reducing the amount from the sender's account
        balanceof[toWhom]+=total_amount;     // Adding the amount to the receiver Account
        return true;
    }


   }
