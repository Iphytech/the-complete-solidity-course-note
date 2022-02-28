//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/*
An operator is a symbol that tells the complier to perform specific mathematical or logical operations

+ - % /

*/

contract Operators {
    function calculator() public view returns (uint256) {
        uint256 a = 5;
        uint256 b = 7;
        return a + b;
    }
}

contract comparisonOperators {
    uint256 a = 4;
    uint256 b = 6;

    function compare() public view {
        // require(a > b, "This is false");
        require(a != b, "This is true");
    }
}

contract logicalOperators {
    uint256 a = 4;
    uint256 b = 5;

    function logic() public view returns (uint256) {
        uint256 result = 0;

        if (a < b && a == 4) {
            result = a + b;
        }
        return result;
    }
}

contract assignmentOperators {
    uint256 b = 4;
    uint256 a = 3;

    function assign() public view returns (uint256) {
        uint256 c = 2;
        return c += c + b;
    }
}
