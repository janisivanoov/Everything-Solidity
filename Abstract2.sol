pragma solidity ^0.8.0;

contract Member {
    string name;
    uint age = 38;
    
    function setName() public virtual returns(string memory){}

    function returnAge() public view returns(uint){
        return age;
    }
}

contract Teacher is Member{
    function setName() public view override returns(string memory){
        return 'Gordon';
    }
}