//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ThisIsAContract {

  constructor() public {

  }

  function getResult() public view returns(uint){
    uint a = 1;
    uint b = 2;
    uint result = a + b;
    return result;
  }
}
