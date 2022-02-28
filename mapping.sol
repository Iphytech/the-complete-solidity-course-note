//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

//  mapping is a refernce type as arrays and structs, following is the syntax to declare a mpaaing type.
//  mapping allows you to save data and have the key that you specify and then retrieve that info later.

contract learnMapping {
    // key and value - key can be string uint or bool - value can be anything
    mapping(address => uint256) public myMap;

    function getAddress(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    function setAddress(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    function removeAddress(address _addr) public {
        delete myMap[_addr];
    }
}

contract assignment {
    mapping(uint256 => Movie) movie;

    struct Movie {
        string title;
        string director;
    }

    function addMovie(
        uint256 id,
        string memory title,
        string memory director
    ) public {
        movie[id] = Movie(title, director);
    }
}
