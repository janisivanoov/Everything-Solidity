pragma solidity 0.8.0;

contract RestrictedAccess {
    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account){
        require(msg.sender == _account, 'Not authorized account!');
        _;
    }

    function changeOwnerAddress(address _NewOwner) onlyBy(owner) public {
        owner = _NewOwner;
    } 

    modifier onlyAfter(uint _time){
        require(block.timestamp >= _time, 'Function called to early');
        _;
    }

    function disOwner() onlyBy(owner) onlyAfter(creationTime + 5 seconds) public {
        delete owner;
    }

    modifier costs(uint _amount){
        require(msg.value >= _amount, 'Not enough provided');
        _;
    }

    function forceOwnerChange(address _newOwner) payable public costs(20 ether){
        owner = _newOwner;
    }
}