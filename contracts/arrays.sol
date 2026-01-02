// SDPDX-License-Identifier: MIT

pragma solidity ^0.8.30;  
contract mycontract1 {
    uint[] public mynums=[11,222,33];
    string[] public myStrings=["yellow", "green","Red"];
    string[] public myName;
    string public name;
// constructor() {
//     mynums;
// }
    function addNames(string memory _name) public{
myName.push(_name);
    }

    function getCountNames() public view returns (uint){
return myName.length;
    }
    function addNum (uint _number) public {
        mynums.push(_number);
    }
    function getnumCounts () public view returns (uint) {
        return mynums.length;
    }
}