pragma solidity ^0.8.0;

contract SimpleStorageBlockchainData{
    uint storedData;

    function set(uint x) public {
        //storedData = x;
        //storedData = block.difficulty;
        //storedData = block.timestamp;
        storedData = block.number;
    }

    function get() public view returns(uint){
        return storedData;
    }
}