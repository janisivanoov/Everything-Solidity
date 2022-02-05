pragma solidity ^0.7.0;

contract calculatorMultiplication{
    function multiplication(uint a, uint b) public view returns(uint){
        uint result = a * b;
        return result;
    }
}