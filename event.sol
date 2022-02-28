//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract LearnEvents {
    // indexed for seraching but it cost more gas, and you can only use 3 indexed per event
    event NewTrade(
        uint256 indexed date,
        address from,
        address indexed to,
        uint256 indexed amount
    );

    function trade(address to, uint256 amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}
