pragma solidity ^0.8.0;

contract ErrorHandling{
    bool public sunny = true;
    uint finalCal = 0;
    bool umbrella = false;

    function solarCalc() public {
        require(sunny, 'It is not sunny today!');
        finalCal += 3;
        assert(finalCal != 6);
    }

    function weatherCalc() public {
        sunny = !sunny;
    }

    function interalTestUnits() public {
        assert(finalCal != 6);
    }

    function getCalc() public view returns(uint){
        return finalCal;
    }

    function bringUmbrella() public {
        if(!sunny){
            umbrella = true;
        }
        else{
            revert('No need to bring an umbrella');
        }
    }
}