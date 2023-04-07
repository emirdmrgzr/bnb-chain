// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Constructor is used to initialize the state variables of the contract
// If you want your variables to have initial value constructor is for you
contract Constructor {
    address public owner;
    string public name;
    uint public age;

    constructor(string memory _name, uint _age) {
        owner = msg.sender;
        name = _name;
        age = _age;
    }

    /* Modifiers are used to modify what other functions going to do in a contract.   
        If there is a modifier and used with a function, in first the modifier
        will be executed and if it's executed successfully then the function is
        going to be executed */
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function changeName(string memory _newName) public onlyOwner {
        name = _newName;
    }
}
