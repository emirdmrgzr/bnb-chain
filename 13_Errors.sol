// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Errors {
    uint storedData;

    function set(uint x) public {
        // require is commonly used. We usually used it to check for msg.sender
        require(x != 0, "x cannot be zero");
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        uint256 result = x + y;

        if (result < x || result < y) {
            // revert function is similar to require but it is used for more spesific errors
            revert("Result overflowed");
        }
        return result;
    }

    function divide(uint x, uint y) public pure returns (uint) {
        // assert function is used to check for internal errors or unexpected conditions
        assert(y != 0); // assert statement to check for division by zero
        return x / y;
    }
}
