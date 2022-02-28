//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract learnStrings {
    string greetings = "Hello";

    function sayHello() public view returns (string memory) {
        // memory is a temporary place to store data whereas storage holds data between function calls.
        return greetings;
    }

    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    function getChar() public view returns(uint){

      // convert strings to byte
       bytes  memory stringToBytes = bytes(greetings); // basic unit of measurement in computer processing
       return stringToBytes.length;


    }
}
