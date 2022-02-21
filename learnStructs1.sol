pragma solidity ^0.8.0;

contract learnStructs{
    struct Movie{
        string title;
        string director;
        uint movie_id;
    }

    Movie movie;
    Movie comedy;

    function setMovies() public {
        movie = Movie('Blade Runner','Ridley Scott', 1);
        comedy = Movie('Zoolander','Ben Stiller',2);
    }

    function getMovieID1() public view returns(uint){
        return movie.movie_id;
    }

    function getMovieID2() public view returns(uint){
        return comedy.movie_id;
    }
}