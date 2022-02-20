pragma solidity ^0.8.0;

contract Main{
    address owner;
    address receiver;

    constructor() public{
        owner = msg.sender;
    }

    modifier myModifier(uint cost){
        require(msg.value >= cost);
        _;
    }
}

contract Second is Main{
    mapping(address => bool) public myMapping;
    uint price;

    function register() public payable myModifier(price){
        myMapping[msg.sender] = true;
    }
}