pragma solidity ^0.8.0;

contract LedgerBalance{
    mapping(address => uint) public balance;

    function updateBalance(uint newBalance) public {
        balance[msg.sender] = newBalance;
    }
}

contract Update{
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updateBalance(30);
    }
}