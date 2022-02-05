pragma solidity ^0.8.0;

contract Calculator{
    uint number1;
    uint number2;

    function getFirstNum(uint num1) public {
        if(num1 > 0){
            number1 = num1;
        }
        else{
            num1 == 0;
        }
    }

    function getSecondNum(uint num2) public {
        if(num2 > 0){
            number2 = num2;
        }
        else{
            num2 == 0;
        }
    }

    function showResult() public view returns(uint){
        uint result = number1 + number2;
        return result;
    }
}