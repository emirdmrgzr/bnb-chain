//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Integers {
    uint public number; // can take values higher than 0

    int public anotherNumber; // can take values from negative to positive

    function setNumber(uint newNumber) public {
        number = newNumber;
    }

    function setAnotherNumber(int newAnotherNumber) public {
        anotherNumber = newAnotherNumber;
    }

    function sum() public view returns (int) {
        return anotherNumber + 1;
    }
}
