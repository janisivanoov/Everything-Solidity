pragma solidity ^0.7.0;

contract funnyDefi{
    uint amountOfTokensOnWallet;

    function GetNumberOfTokens(uint numOfT) public{
        amountOfTokensOnWallet = numOfT;
    }

    function Checker() public view returns(uint){
        if(amountOfTokensOnWallet <= 10){
            uint result = amountOfTokensOnWallet + 10;
            return result;
        }
        if(amountOfTokensOnWallet > 10){
            uint result = amountOfTokensOnWallet + 1;
            return result;
        }
    }
}