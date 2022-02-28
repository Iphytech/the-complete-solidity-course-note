//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract enumsLearn {
    enum frenchFriesSize {
        LARGE,
        MEDIUM,
        SMALL
    }

    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.LARGE;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns (frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public view returns (uint256) {
        return uint256(defaultChoice);
    }
}
