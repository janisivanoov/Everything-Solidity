pragma solidity ^0.8.0;

contract learnEnums{
    enum frenchFriesSize {SMALL, MEDIUM, LARGE}
    frenchFriesSize choice;
    frenchFriesSize constant defaultSetting = frenchFriesSize.MEDIUM;

    function setSmall() public{
        choice = frenchFriesSize.SMALL;
    }

    function returnChoise() public view returns(frenchFriesSize){
        return choice;
    }

    function getDefault() public view returns(frenchFriesSize){
        return defaultSetting;
    }
}