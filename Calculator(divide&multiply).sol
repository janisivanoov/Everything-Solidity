pragma solidity ^0.7.0;

contract calculator{
    uint b = 4;

    function multiply_by_four(uint a) public view returns(uint){
        return a * b;
    }

    function divide_by_four(uint a) public view returns(uint){
        require(a >= 8, 'Incorrect input');
        return a / b;
    }
}