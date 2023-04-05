//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// State Variables -> These are variables which declared outside of functions and easy to be accessed
// Local Variables -> These are variables which declared inside a function and only be accessed in that function
// Global Variables -> These are variables which are available for all contracts and functions.

contract Variables {
    string public myStateVariable = "state example";

    function add(uint a) public pure returns (uint) {
        // pure parameter in solidity makes sure that function is going to take action related to its parameters
        uint localUint = 10;
        return a + localUint;
    }

    function globalVariables() public view returns (address, uint, uint) {
        return (msg.sender, block.timestamp, block.number);
    }
}
