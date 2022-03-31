pragma solidity ^0.8.0;

contract UsingConstructors{
    uint age;
    string name;

    constructor(string memory _name, uint _age) public {
        name = _name;
        age = _age;
    }
}

contract UsingConstructors2 is UsingConstructors('Ivan', 18){
    function getName() public view returns(string memory){
        return name;
    }
}