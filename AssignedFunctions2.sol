pragma solidity ^0.7.0;

contract AssignedOperators{
    uint b = 4;
    uint a = 2;

    function someFunctionName() public view returns(uint){
        uint c = 3;

        return c += c + b - a;
    }
}