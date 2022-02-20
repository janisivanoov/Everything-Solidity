pragma solidity ^0.8.0;

contract learnString{
    string greetings = 'Hello';

    function greet() public view returns(string memory){
        return greetings;
    }

    function changeGreetings(string memory _newgreetings) public {
        greetings = _newgreetings;
    }

    function getChar() public view returns(uint){
        bytes memory stringToByte = bytes(greetings);
        return stringToByte.length;
    }
}