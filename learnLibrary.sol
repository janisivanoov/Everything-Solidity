pragma solidity ^0.8.0;

library Search {
    function indexOf(uint[] storage self, uint value) public view returns(uint){
        for(uint i = 0; i < self.length; i++){
            if(self[i] == value){
                return i;
            }
        }
    }
}

library Search2 {
    function indexOf(uint[] storage self, uint value) public view returns(uint){
        for(uint i = 0; i < self.length; i++){
            if(self[i] == value){
                return i;
            }
        }
    }
}

contract Test{
    uint[] data;

    constructor() public{
        data.push(0);
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent(uint val) external view returns(uint){
        uint index = val;
        uint value = Search.indexOf(data, index);
        return value;
    }
}

contract Test2{
    using Search2 for uint[];
    uint[] data;
    constructor() public{
        for(uint i = 0; i < 6; i++){
            data.push(i);
        }
    }

    function isValuePresent2() external view returns(uint){
        uint value = 4;
        uint result = data.indexOf(value);
        return result;
    }
}