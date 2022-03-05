pragma solidity ^0.8.0;

contract Vendor{
    address seller;

    modifier onlySeller() {
        require(msg.sender == seller, 
        'Only seller can sell');
        _;
    }

    function becomeSeller() public {
        seller = msg.sender;
    }

    function sell(uint amount) payable public onlySeller {
        if(amount > msg.value) {
            revert('There is not enough ether provided!');
        }
    }
}