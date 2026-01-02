// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    uint256 number;  // private
    address public myAddress ;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     * View comes with Get call which returs global variable
     * Pure also comes with Get call, but pure returs teh local variables instead of Global varaible.
     */
    function retrieve() public view returns (uint256){
        return number;
    }
    function setMyAddress() public {
            myAddress=msg.sender;
    }
}