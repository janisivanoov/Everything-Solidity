pragma solidity ^0.8.0;

contract Comaparador{
    uint a = 323;
    uint b = 4;

    function comparato() public view{
        require(a <= b, 'This comparison is wrong');
    }
}