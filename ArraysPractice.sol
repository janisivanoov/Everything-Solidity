pragma solidity ^0.8.0;

contract LoopTest{
    uint [] longList = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
    uint [] numberList = [1,4,32,54];

    function numberListLoop(uint userNumber) public view returns(bool){
        bool numberExists = false;
        for(uint i = 0; i < numberList.length; i++){
            if(numberList[i] == userNumber){
                numberExists = true;
            }
        }
        return numberExists;
    }

    function evenNumbersLoop() public view returns(uint){
        uint count = 0;
        for(uint i = 0; i < longList.length;i++){
            if(longList[i] % 2 == 0){
                count++;
            }
        }
        return count;
    }
}