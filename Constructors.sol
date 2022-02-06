pragma solidity ^0.8.0;

contract Base{
    uint data;

    constructor(uint _data) public {
        data = _data;
    }
}

contract Derived is Base{
    constructor(uint D) Base(D) public {}

    function getData() public view returns(uint){
        return data;
    }
}