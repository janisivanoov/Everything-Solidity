pragma solidity ^0.6.0;

contract Contract111{
    uint256 num1 = 888;
    constructor() public {
    }

    function showResult(uint256 num2) public {
        num1 = num2;
    }

    function Calculator() public view returns(uint){
        uint256 a = 1;
        uint256 b = 2;
        uint result = a + b;
        return result;
    }

    function showResult2(uint256 num3) public view returns(uint256){
        return num3;
    }
}