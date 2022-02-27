pragma solidity ^0.8.0;

contract allowance{
    mapping(address => mapping(address => System)) public allowanc;

    struct System{
        address addrOwner;
        address addrSpender;
    }

    function addToSystem(address _addOwn, address _addSpnd) public {
        allowanc[msg.sender][msg.sender] = System(_addOwn, _addSpnd);
    }

    function remove(address _addOw, address _addSp) public{
        delete allowanc[_addOw][_addSp];
    }
}