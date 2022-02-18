pragma solidity ^0.7.0;

contract FinalAssignment2{
    uint a = 3000;
    uint b = 1200;
    uint f = 47;

    function finalization() public view returns(uint){
        uint d = 23;

        if(a > b && b < f){
            d*= d;
            return d - b;
        }
        else{
            return d;
        }
    }
}