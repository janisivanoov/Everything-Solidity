pragma solidity ^0.8.0;

contract MyContract{
    function getSum(uint a, uint b) public pure returns(uint){
        return a + b;
    }
    function getSum(uint a, uint b, uint c) public pure returns(uint){
        return a + b + c;
    }
    function getSumTwo() public pure returns(uint){
        return getSum(2,3);
    }
    function getSumThree() public pure returns(uint){
        return getSum(2,3,1);
    }
}