//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Functions {
    string public stateString = "Hi Everyone!";

    function viewExample() public view returns (string memory) {
        // going to return what we give inside and not change anything
        return stateString;
    }

    function add(uint a, uint b) public pure returns (uint) {
        // it's going to make the calculation, operation we want
        return a + b;
    }
}
