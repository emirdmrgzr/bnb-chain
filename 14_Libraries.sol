// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Libraries on Solidity is similar to libraries or modules of other languages.
// Solidity libraries can include functions, variables or constants.
// Libraries are can be called more than 1 time.
// Libraries are pretty good way to reduce code repeat

library MyLibrary {
    function double(uint[] memory nums) public pure returns (uint[] memory) {
        uint[] memory result = new uint[](nums.length);

        for (uint i = 0; i < nums.length; i++) {
            result[i] = nums[i] * 2;
        }

        return result;
    }
}

contract myContract {
    uint[] myNumbers = [1, 2, 3, 4, 5];

    function doubleMyNumbers() public view returns (uint[] memory) {
        return MyLibrary.double(myNumbers);
    }
}
