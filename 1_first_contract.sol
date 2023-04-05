//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract FirstContract {
    string public text = "First Smart Contract";

    function getText() public view returns (string memory) {
        return text;
    }
}
