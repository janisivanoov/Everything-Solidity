pragma solidity ^0.8.0;

contract Test{

    function addToEVM() public view returns(uint){
        uint x;
        uint y;
        uint z;

        bytes memory data = new bytes(10);

        bytes32 dataB32;

        assembly{
            dataB32 := mload(add(data, 32))
        }
    }

    function addToEVM2() public view returns(bool success){
        uint size;
        address addr;

        assembly{
            size := extcodesize(addr)
        }
        if(size > 0){
            return true;
        }
        else{
            return false;
        }
    }

    function addToEVM3() public view returns(uint){
        uint x;
        uint y;

        assembly{
            let z := add(x,y)
            let a := mload(0x04)
            mstore(a,4)
        }
    }
}