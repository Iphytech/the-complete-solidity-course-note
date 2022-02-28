//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// The contract will allow only the creator to create a new coin
// Anyone can send coin to each other without need for registering with a username and password, all you need is ethereum keypair.

contract Coin {
    // the keyword public is making the variables here accessible from other contracts
    address public minter;
    mapping(address => uint256) public balances;
    event sent(address from, address to, uint256 amount);

    constructor() {
        minter = msg.sender;
    }

    // make new coin and send to an address
    function minting(address reciever, uint256 amount) public {
        require(msg.sender == minter, 'you are not the owner');
        balances[reciever] += amount;
    }

    // send any amount of coins to an existing address

    error insufficientBalance(uint256 requested, uint256 available);

    function send(address reciever, uint256 amount) public {
        if (amount > balances[msg.sender])
            revert insufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        balances[msg.sender] -= amount;
        balances[reciever] += amount;

        emit sent(msg.sender, reciever, amount);
    }
}
