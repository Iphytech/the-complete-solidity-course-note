//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract DecisionMaking {
    uint256 orange = 5;

    function validateOrange() public view returns (bool) {
        if (orange == 5) {
            return true;
        } else {
            return false;
        }
    }

    uint256 stakingWallet = 10;

    function airdrop() public view returns (uint256) {
        if (stakingWallet == 10) {
            return stakingWallet + 10;
        } else {
            return stakingWallet + 1;
        }
    }
}
