pragma solidity ^0.7.0;

contract Comparador{
    uint a = 333;
    uint b = 45;

    function Coparato() public view{
        require(a == b, 'This compare wrong');
    }
}