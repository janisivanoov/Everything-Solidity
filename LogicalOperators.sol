pragma solidity ^0.7.0;

contract LogicalOperators{
    uint a = 17;
    uint b = 32;

    function logicOperator() public view returns(uint){
        uint result = 0;
        if(b > a && a != b){
            result = a * b;
        }
        return result;
    }
}