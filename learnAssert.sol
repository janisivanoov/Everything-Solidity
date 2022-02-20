pragma solidity ^0.8.0;

contract learnAssert{

    function test() public{
        assert(100000000000 wei == 1 ether);
        assert(1 wei == 1);
        assert(1 ether = 1e18);
        assert(2 ether == 200000000000 wei);
    }

    function exercise() public{
        assert(1 minutes == 60 seconds);
        assert(24 hours == 1440 minutes);
        assert(1 day == 24 hours);
        assert(1 week == 7 days);

        assert(10 == 9 + 1);
    }
}