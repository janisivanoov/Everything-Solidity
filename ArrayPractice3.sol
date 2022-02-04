pragma solidity ^0.8.0;

contract ArrayWork{

    uint[] public myArray;

    function removeElement(uint number) public {
        myArray[number] = myArray[myArray.length - 1];
    }

    function test() public{
        /*
        myArray.push(0);
        myArray.push(1);
        myArray.push(2);
        myArray.push(3);
        */

        for(uint i = 1; i <= 4; i++){
            myArray.push(i);
        }
    }

    function getChangedArray() public view returns(uint[] memory){
        return myArray;
    }
}