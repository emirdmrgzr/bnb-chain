//SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract StringAndBytes {
    string public greeting = "Greetings!";

    bytes public helloText = "Hello, World!";
    // When we want to directly print this helloText we are not going to get Hello, World!
    // Because it's going to return us "Hello, World!"s byte converted version which
    // is going to contain some numbers and letters

    string public convertedText = string(helloText);
    // And if we convert the byte to string then it's going to be print the text to us.
}
