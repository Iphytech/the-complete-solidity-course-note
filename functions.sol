//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*

Function is a group of reuseable code which can be called anywhere in the program. 
it eliminates the need of writing the same code again and again. 
it helps programmmers in writing modular codes. functions allow a programmer to divide a big program into a number of small and manageable functions.
 
function function-name(parameter-list) scope returns(){
  statements
}
public - access outside of the contract
private - within the contract
view - view the result returned in the IDE

local variables will superceed the state varaibles(function variable)
ALl the variables we write in a function remains localized
*/

contract learnFunctions {
    function addValues() public view returns (uint256) {
        uint256 a = 2;
        uint256 b = 3;
        uint256 result = a + b;
        return result;
    }

    function multiplyvalues(uint256 a, uint256 b)
        public
        view
        returns (uint256)
    {
        uint256 result = a * b;
        return result;
    }
}
