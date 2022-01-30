pragma solidity ^0.7.0;

contract addingValues{
    
    function AddValues() public pure returns(uint){
        uint a = 56; 
        uint b = 77;
        uint result = a + b;
        return result;
    }

    function AddBothValues(uint b, uint a) public pure returns(uint){
        uint result = b + a;
        return result;
    }

    function DoubleCheckResult() public pure returns(uint){
        return AddValues();
    }
}