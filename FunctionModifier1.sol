pragma solidity ^0.8.0;

contract Main{
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
}

contract Interaction is Main{
    mapping(address => bool) registeredAddresses;
    uint price;

    constructor(uint initialPrice) public{
        price = initialPrice;
    }

    function register() public payable {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint _price) public onlyOwner{
        price = _price;
    }
}