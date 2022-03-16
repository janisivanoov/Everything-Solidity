pragma solidity ^0.8.0;

contract myContract{
    uint value;

    function getValue() external view returns(uint){
        return value;
    }

    function getNewValue() external pure returns(uint){
        return 2 + 3;
    }

    function setValue(uint _value) external {
        value = _value;
    }

    function getSecondValue() external view returns(uint){
        return value + 2;
    }

    function multiply() external pure returns(uint){
        return 2 * 3;
    }
}