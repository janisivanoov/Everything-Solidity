pragma solidity ^0.8.11;

contract FunctionFirst{
    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }   
}