//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

/*
Array is a data structure, which stores a fixed-size sequential collection of elements of the same type.
An array is used to store collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

Types:
Push() - method adds one or more elements to the end of an array and returns the new length of the array.
Pop() - Method removes the last element from an array and returns that value to the caller.
length - is a string property that is used to determine the length of a string.
delete - remove the value and set the value to zero, the length remains the same.
*/
contract learnArray {
    uint256[] public myArray;
    uint256[] public myArray2;
    uint256[200] public myFixedSizedArray;
    uint256[] public changeArray;

    function push(uint256 number) public {
        myArray.push(number);
    }

    function pop() public {
        myArray.pop();
    }

    function getLength() public view returns (uint256) {
        return myArray.length;
    }

    function remove(uint256 i) public {
        delete myArray[i];
    }

    function removeElement(uint256 i) public {
        changeArray[i] = changeArray[changeArray.length - 1];
        changeArray.pop();
    }

    function test() public {
        for (uint256 i = 1; i <= 4; i++) {
            changeArray.push(i);
        }
    }

    function getChangeArray() public view returns (uint256[] memory) {
        return changeArray;
    }
}
