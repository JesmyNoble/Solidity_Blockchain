// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.30;  
contract HotelCheck {
     enum RoomStatus {
        Vacant,
      Booked}
    RoomStatus currentStatus;

  event Occupy(address _occupent,uint value);  // its an event
     address payable public owner;
     constructor() {
        owner = msg.sender;
     }
 
     modifier onlyWhileVacant() {  // without arg
       require(currentStatus==RoomStatus.Vacant,"Room is not vacant !!!");  // define under a function. This will not execute following step if it fails.
        //retur function
     }
     modifier cost (uint _amount){ // with arg
        require (_msg.value<= _amount,"Not much fund");
        _;

     }
     function bookRoom() payable onlyWhileVacant cost (2 ether){
       owner.transfer(msg.value);
        currentStatus = RoomStatus.Booked;
        (bool send,bytes memory data) = owner.call{value:msg.value}("");  //this gives status of the transaction to the owner and memory to get any data or messages back.
        require(true );
        emit Occupy(msg.sender,msg.value); // give allert / event to the Owner abou th new ocupent came
     }
     function checkOut() {
        require(currentStatus==RoomStatus.Booked);
        currentStatus = RoomStatus.Vacant;

     }

}