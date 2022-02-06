pragma solidity ^0.8.0;

contract colors{
    string favourityColor = 'blue';

    function showResult() public view returns(string memory){
        return favourityColor;
    }

    function changeColor(string memory _newColor) public {
        favourityColor = _newColor;
    }

    function getColorLenght() public view returns(uint){
        bytes memory fromString = bytes(favourityColor);
        return fromString.length;
    }
}