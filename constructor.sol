//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*

A constructor code is executed once when a contract is created and it is used to initialize contract state.
*/

contract Member {
    string name;
    uint256 age;

    // initialize name and age upon deployment

    constructor(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

// contract Teacher is Member // ("Mike", 24) {
//     function getName() public view returns (string memory) {
//         return name;
//     }
// }

contract Teacher is Member {
    constructor(string memory n, uint256 a) public Member(n, a) {}

    function getName() public view returns (string memory) {
        return name;
    }
}

contract Base {
    uint256 data;

    constructor(uint256 _data) public {
        data = _data;
    }

    function getData() public view returns (uint256) {
        return data;
    }
}

contract Derived is Base(5) {
    function getBaseData() public view returns (uint256) {
        return data;
    }
}
