pragma solidity ^0.7.0;

contract Assignment1{
    uint [] private myLoopingPractice = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] private numberList = [1,4,34,56];

    function lookingForNumber(uint numb1) public view returns(bool){
        uint count = 0;

        for(uint i = 0; i < numberList.length; i++){
            if(numb1 == numberList[i]){
                return true;
            }
        }
    }

    function checkList(uint _num, uint _num1) private view returns(bool){
        if(_num % _num1 == 0){
            return true;
        }
        else{
            return false;
        }
    } 

    function arrayListCheck(uint _number) public view returns(uint){
        uint count = 0;

        for(uint i = 1; i < myLoopingPractice.length; i++){
            if(checkList(myLoopingPractice[i], _number)){
                count++;
            }
            return count;
        }
    }
}