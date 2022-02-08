pragma solidity ^0.7.0;

contract A{
    uint public data = 10;

    function x() public pure returns(uint){
        uint newData = 25;
        return newData;
    }

    function y() public pure returns(uint){
        return x();
    }
}