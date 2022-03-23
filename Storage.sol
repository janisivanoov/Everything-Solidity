pragma solidity ^0.7.0;

contract just_a_contract{

    uint256 number;

    constructor() public{}

    function store(uint256 numb) public{
        number = numb;
    }

    function retreive() public view returns(uint){
        return number;
    }
}