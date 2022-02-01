pragma solidity ^0.7.0;

contract arrayCheck{
    uint [] public numbers = [1,2,3,4,5,6,7,8,9,10];

    function checkList(uint _num, uint _num1) public view returns(bool){
        if(_num % _num1 == 0){
            return true;
        }
        else{
            return false;
        }
    } 

    function arrayListCheck(uint _number) public view returns(uint){
        uint count = 0;

        for(uint i = 1; i < numbers.length; i++){
            if(checkList(numbers[i], _number)){
                count++;
            }
            return count;
        }
    }
}