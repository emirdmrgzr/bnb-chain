// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Modifiers allows us to check for a condition before execution of function

contract Modifiers {
    address public owner;
    uint256 public myNumber;

    constructor(uint256 _myNumber) {
        owner = msg.sender;
        myNumber = _myNumber;
    }

    // With the help of the modifier below, we assure only the owner is allowed to call the function
    modifier onlyOwnerOrAddress(address _allowedAddress) {
        require(
            msg.sender == owner || msg.sender == _allowedAddress,
            "Only the owner or an allowed address can call this function"
        );
        _; // Merge WildCard
    }

    function changeNumber(
        uint256 _newNumber
    ) public onlyOwnerOrAddress(address(0x456)) {
        myNumber = _newNumber;
    }
}
