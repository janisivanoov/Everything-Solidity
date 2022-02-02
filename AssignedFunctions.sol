pragma solidity ^0.7.0;

contract AssignedOperators{
    uint b = 4;
    uint a = 3;

    function someFunctionname() public view returns(uint){
        uint c = 2;
        return c += c + b + a;
    }
}