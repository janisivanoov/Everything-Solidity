pragma solidity >=0.7.0 < 0.9.0;

contract WelcomeToSolidity{

    address main = 0xB6EA839d5041b3d5e081CbF4f13979bFFEEBf93F;
    address nonmain = 0x853D87388E8242177378B6412527c1Fa799d23Bf;

    constructor() public{}

    function showAnAddress(address NNN) public view returns(address){
        if(NNN == main){
            return NNN;
        }
        else{
            return nonmain;
        }
    }
}