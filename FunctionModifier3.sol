pragma solidity ^0.8.0;

contract Main{
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier myOwner {
        require(msg.sender == owner);
        _;
    }

    modifier myPrice(uint price){
        require(msg.value >= price);
        _;
    }
}

contract Receiver is Main{
    mapping(address => bool) public myMapping;
    uint price;

    constructor(uint initializedPrice) public {
        price = initializedPrice;
    }

    function registration() public payable myPrice(price){
        myMapping[msg.sender] = true;
    }

    function changePrice(uint _price) public myOwner{
        price = _price;
    }
}