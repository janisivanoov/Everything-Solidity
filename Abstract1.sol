pragma solidity ^0.8.0;

abstract contract X{
    function y() public view virtual returns(string memory);
}

contract Z is X {
    function y() public override view returns(string memory){
        return 'hello';
    }
}