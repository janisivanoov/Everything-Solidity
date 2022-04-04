pragma solidity ^0.8.0;

contract Main{
    string name;
    uint age;

    constructor(string memory _name, uint _age){
        name = _name;
        age = _age;
    }
}

contract Second is Main{
    constructor(string memory N, uint A) Main(N,A) public{}

    function getName() public view returns(string memory){
        return name;
    }
}

contract Base{
    uint data;

    constructor(uint _data) public {
        data = _data;
    }

    function getData() public view returns(uint){
        return data;
    }
}

contract Derive is Base(8){
    function getDataFromBase() public view returns(uint){
        return data;
    }
}