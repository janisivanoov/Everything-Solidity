pragma solidity >=0.5.0 < 0.8.0;

contract openDoor{
    bool saveResult;

    function doorOpened(bool IsDoorOpened) public {
        saveResult = IsDoorOpened;
    }

    function RetreiveResult() public view returns(bool){
        return saveResult;
    }
}