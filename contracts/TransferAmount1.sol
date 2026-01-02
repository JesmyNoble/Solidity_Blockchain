// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;  
contract withDrawMoney {
    uint public balanceReceived;
    uint public creditedAmt;

    function deposit() public payable {
        balanceReceived+=msg.value;
    }
    function getContractBalance () public view returns (uint) {
        return  address(this).balance;
    }
    function withdrawALL() public {   // withdrawing from FROM account
        address payable from = payable (msg.sender);
         
        from.transfer(getContractBalance());

    }
    function getaccountBalance(address account) public view returns (uint) {  // to know the balance of given address
        return account.balance;
    }
    function creditWithdrawedAmtTo(address payable to) public {// passed TO address and getting the the withdrawed amount to another account
        to.transfer(getContractBalance());
        creditedAmt=getaccountBalance(to);  // to get the TO account balance.
    }
}