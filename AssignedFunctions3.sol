pragma solidity ^0.8.0;

contract AssignedOperators{
    uint b = 4;
    uint a = 3;

    function someNameFunction() public view returns(uint){
        uint c;

        return c = b;
    }
}