pragma solidity ^0.7.0;

contract LogicalOperators{
    uint a = 4;
    uint b = 3;

    function LogicalOperator() public view returns(uint){
        uint result = 0;
        if(a < b && a == 4){
            result = a + b;
        }
        return result;
    }
}