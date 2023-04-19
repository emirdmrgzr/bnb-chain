// SPDX-License-Identifier: MIT

// Inheritance helps us to prevent code repeat and increases understandability of the code

pragma solidity 0.8.19;

contract Parent {
    uint public parentData;

    constructor(uint _parentData) {
        parentData = _parentData;
    }
}

contract Child is Parent {
    uint public childData;

    constructor(uint _parentData, uint _childData) Parent(_parentData) {
        childData = _childData;
    }
}

// At the constructor part of Child we sent _parentData to Parent by Parent(_parentData)
