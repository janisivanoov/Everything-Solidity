pragma solidity ^0.8.0;

contract MyContract{
    event Log(uint gas);

    fallback() external payable {
        emit Log(gasleft());
    } 
    
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
}

contract FromFallBack{
    function transferFromFallBack(address payable _to) public payable{
        _to.transfer(msg.value);
    } 

    function callFromFallback(address payable _to) public payable {
        (bool sent,) = _to.call{value:msg.value}('');
        require(sent, 'Failed sent');
    }
}