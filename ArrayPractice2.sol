pragma solidity ^0.8.0;

contract learnArrays{
    uint[] public myArray;
    uint[] public myArray2;
    uint[200] public myFixedSixedArray;

    function push(uint number) public {
        myArray.push(number);
    }

    function pop() public{
        myArray.pop();
    }

    function getLength() public view returns(uint){
        return myArray.length;
    }

    function remove(uint number1) public {
        delete myArray[number1]; //before deleting [0,1,2] deleting number 2(its == to 2), entering 2 -> result: [0,1,0]
    }
}