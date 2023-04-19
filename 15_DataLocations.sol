// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Storage -> It is stored in the blockchain. State variables.
// Memory -> Temporary data location. It is being cleared after function completed.
// Calldata -> It's similar to memory but it contains function args.

contract Example {
    // These 2 variables are state variables and stored in the storage
    uint storedData; // stored in storage
    string storedString; // stored in storage

    function set(uint256 x, string calldata s) public {
        storedData = x;
        storedString = s;
    }

    function get() public view returns (uint, string memory) {
        return (storedData, storedString); // read from storage;
    }

    function double(uint[] calldata nums) public pure returns (uint[] memory) {
        uint[] memory result = new uint[](nums.length);

        for (uint i = 0; i < nums.length; i++) {
            result[i] = nums[i] * 2; // stored in memory and will be lost after execution
        }

        return result; // returned from memory
    }
}
