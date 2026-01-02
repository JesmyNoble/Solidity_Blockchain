// SDPDX-License-Identifier: MIT

pragma solidity ^0.8.30;  
contract myCOntract {
    mapping(uint => string) public names;
    mapping (uint => Book) public books;
    mapping(address => mapping(uint =>Book)) public myBooks;
    struct Book {
        string title;
        string author;
    }
    constructor () {
        names[1]= "Adam";
        names[2]="Carl";
        names[3]="Bruce";
    }
    function addBooktoLibrary(uint _id , string memory _title, string memory _author) public {
        books[_id]=Book(_title,_author);
    }
function addToMyBooksFrmLibrary(uint _myId, string memory _title, string memory _author) public {
    myBooks[msg.sender][_myId]=Book(_title,_author);
}

}