//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*

Loops allow you to iterate through data and take functional action depending on the data
*/

contract loopContract {
    uint256[] public numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    function checkValidity(uint256 _num, uint256 _nums)
        public
        view
        returns (bool)
    {
        if (_num % _nums == 0) {
            return true;
        } else {
            return false;
        }
    }

    function checkMultiples(uint256 _number) public view returns (uint256) {
      uint count = 0;
        for (uint256 i = 1; i < numberList.length; i++) {
          if(checkValidity(numberList[i], _number)){
            count++;
          }

        }
        return count;
    }
}
