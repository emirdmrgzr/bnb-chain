// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Address {
    // You can check your account address and the returned adress to see they are same
    address private owner = msg.sender;

    function getOwner() public view returns (address) {
        return owner;
    }
}
