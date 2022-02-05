pragma solidity ^0.7.0;

contract calculator{
    uint a = 1;

    function AddNewValue() public view returns(uint){
        uint b = 5;
        uint result = a + b;
        return result;
    }

    function multiplication(uint b) public view returns(uint){
        uint result = a * b;
        return result;
    }
}