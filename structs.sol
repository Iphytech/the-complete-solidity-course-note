//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*
Struct are types that are used to represent a record. 
*/

contract learnStructs {
    struct Movie {
        string title;
        string director;
        uint256 movieId;
    }

    Movie movie;

    function getMovie() public {
        movie = Movie("Title", "director", 1);
    }

    function getMovieId() public view returns (uint256) {
        return movie.movieId;
    }
}
