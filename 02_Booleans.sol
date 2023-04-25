// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Booleans {
    bool public isOwner = true;

    function getVar() public view returns (bool) {
        return isOwner;
    }

    function setVar(bool value) public {
        isOwner = value;
    }
}
