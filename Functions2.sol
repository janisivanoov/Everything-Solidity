pragma solidity >=0.5.0 < 0.8.0;

contract learnFunctions{

    bool saveResult;
    //uint result1;
    //uint result2;

    function remoteControlOpen(bool closedDoor) public {
        saveResult = closedDoor;
    }

    function RetreiveResult() public view returns(bool){
        return saveResult;
    }

    function AddValues() public view returns(uint){
        uint a = 2;
        uint b = 3;
        uint result = a + b;
        //result1 = result;
        return result;
    }

    function addNewValues() public view returns(uint){
        uint a = 77;
        uint b = 88;
        uint result = a + b;
        //result2 = result;
        return result;
    }

    //function ShowSum() public view returns(uint){
      //  uint mainRes = result1 + result2;
        //return mainRes;
    //}
}