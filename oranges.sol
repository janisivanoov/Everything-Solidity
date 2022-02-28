pragma solidity ^0.7.0;

contract if_else{
    uint oranges = 5;
    string yes = "yes";
    
    function testing(uint guess) public view returns(bool){
        if(guess == oranges){
            return true;
        }
        else{
            return false;
        }
    }
}