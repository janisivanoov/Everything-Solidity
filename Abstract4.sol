pragma solidity ^0.8.0;

abstract contract Calculator {
    function getResult() public view virtual returns(uint);
}

contract Test is Calculator{
    function getResult() public override view virtual returns(uint){
        uint a = 1;
        uint b = 2;
        uint result;
        result = a + b;
        return result;
    }
}