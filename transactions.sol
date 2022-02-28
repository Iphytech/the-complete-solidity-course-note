//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract Fund {
    modifier onlyOwner() {
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns (bool success) {
        for (uint256 i = 0; funders.length; i++) {
            funders[i].transfer(contributedAmount);
        }
        return true;
    }

    fallback() external {}
}
