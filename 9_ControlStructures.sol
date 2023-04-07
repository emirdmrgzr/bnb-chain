// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract ControlStructures {
    // if-else usually checks for a condition and proceeds according to that condition
    function ifElse(uint256 x) public pure returns (uint256) {
        if (x > 10) {
            return x + 1;
        }
        return x - 1;
    }

    // for loop processes repeatedly until it reaches to provided value.
    function forLoop(uint stop) public pure returns (uint) {
        uint sum = 0;

        for (uint i = 0; i < 10; i++) {
            sum += i;
            if (stop == 1) {
                break;
            }
        }
        return sum;
    }

    // while loop continiues to process until a condition is met
    function whileLoop(uint number) public pure returns (uint) {
        uint count = 0;
        while (number != 0) {
            count++;
            number--;
        }
        return count;
    }
}
