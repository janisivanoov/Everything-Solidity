pragma solidity ^0.8.0;

contract StringThings{
    string favColour = "yellow";

    function getColour() public view returns(string memory){
        return favColour;
    }

    function changeColor(string memory _changed) public {
        favColour = _changed;
    }

    function getStringLength() public view returns(uint){
        bytes memory stringToBytes = bytes(favColour);
        return stringToBytes.length;
    }
}