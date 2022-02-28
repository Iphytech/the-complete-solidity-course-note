//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*

private = you can only call the function inside the contract
internal = called only within the contract or other contracts that inherit the smart contract
internal is slightly less restrictive than public
external = you can only call the function outside the contract not from other function within
public you can call the function from outside the smart contract as well inside the smart contract

private removes the accessiblity


state variable vs local variable

if the function is changing state, use pure, if it is not changing state, use view.
function and variable - internal, external, private, public

*/

contract C {
    uint256 public data = 10; // state variable

    function x() private pure returns (uint256) {
        // uint data = 10; // local variable
        uint256 newData = 25;
        // data = 17;
        return newData;
    }

    function y() public view returns (uint256) {
        return x();
    }

    function a() external pure returns (uint256) {}
}
