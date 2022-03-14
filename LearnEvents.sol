pragma solidity ^0.8.0;

contract EventsLearn{
    event NewTrade(uint indexed date,
     address from,
      address indexed to,
       uint indexed amount);

    function trade(address to, address from, uint amount) external {
        emit NewTrade(block.timestamp, from, to, amount);
    }
}