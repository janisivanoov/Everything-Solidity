pragma solidity ^0.8.0;

contract learnMapping{
    mapping(address => uint) public myMapping;

    function getAddress(address _addr) public view returns(uint){
        return myMapping[_addr];
    }

    function setAddress(address _addr, uint _i) public {
        myMapping[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMapping[_addr];
    }

}