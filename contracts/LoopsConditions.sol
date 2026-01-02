// SDPDX-License-Identifier: MIT

pragma solidity ^0.8.30;  
contract myCOntract {
    //if
    //loop
    uint256 [] public numbers=[1,2,3,4,5,6,7,8,9,10,32];
function isEvenNumber(uint _tempNum) public  view returns (bool) {
    if(_tempNum % 2 == 0){
        return true;
    }
    else
    {
        return false;
    }
}
function countEvenNumbers() public view returns (uint count) {
    for (uint i=0;i < numbers.length;i++) {
        if ( isEvenNumber(numbers[i])) {
            count++;
        }
    }
    return count;
}


}