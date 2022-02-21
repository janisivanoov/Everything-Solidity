pragma solidity ^0.8.0;

contract learnMapping{
    mapping(uint => Movie) movie;

    struct Movie{
        string title;
        string director;
    }

    function addMovie(uint id, string memory title, string memory director) public{
        movie[id] = Movie(title, director);
    }

    function addMyMovie(uint id, string memory title, string memory director) public{
        Movie[msg.sender][id] = Movie(title, director);
    }
}