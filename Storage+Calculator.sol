pragma solidity >=0.7.0 < 0.9.0;

contract WelcomeToSolidity{

    uint256 number;

    constructor() public{}

    function justFunc(uint256 numb1) public view returns(uint256){
        return numb1;
    }

    function calculator() public view returns(uint){
        uint256 a = 4;
        uint256 b = 11;
        uint256 result = a + b;
        return result;
    }

    function save(uint256 numb) public{
        number = numb;
    }

    function retreive() public view returns(uint){
        return number;
    }
}