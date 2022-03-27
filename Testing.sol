pragma solidity >=0.7.0 < 0.9.0;

contract WelcomeToSolidity{
    string DData = "Test";
    uint256 num1 = 467;

    constructor() public{}

    function getResult() public view returns(uint){
        uint a = 1;
        uint b = 2;
        uint result = a + b;
        return result;
    }

    function show(uint256 num) public view returns(uint256) {
        return num; 
    }

    function showTree() public view returns(int){
    int Tree = 16;
    return Tree;
    }

    function showString(int Word122) public view returns(int){
        return Word122;
    }
}