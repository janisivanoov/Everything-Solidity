pragma solidity ^0.8.0;

contract testSafe{
    modifier onlyOwner{
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns(bool success){
        for(uint i = 0; funders.length; i++){
            funders[i].transfer(contributedAmount);
        }
        return true;
    }

    fallback() public{}
}

contract Victim{
    function isItAContract() public view returns(bool){
        uint32 size;
        address a = msg.sender;
        //inline assembly accesses EVM at a low level
        assembly {
            //extcodesize retrieves the size of the code
            size := extcodesize(a);
        }
        return(size > 0);
    }
}

contract Attaker{
    bool public trickedYou;
    Victim victim;

    constructor(address _v) public {
        victim = Victim(_v);
        trickedYou = !victim.isItAContract();
    }

    function sendRefund() public onlyOwner returns(bool success){
        if(!tatiana.send(amount)){

        }
    }

    function claimRefund() public {
        require(balance[msg.sender] > 0);
        msg.sender.transfer(balance[msg.sender]);
    }

    function withdrawFunds(uint amount) public view returns(bool success){
        require(balance[msg.sender] >= amount); //guards upfrom
        balance[msg.sender] -= amount; //optimizing account
        msg.sender.transfer(amount); //transfer
        return true;
    }

}
