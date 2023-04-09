// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Structs in solidity is pretty similar to objects in other PL's

contract Structs {
    struct User {
        string name;
        uint age;
        address wallet;
    }

    // Kullanıcıların tutualacağı arrayi tanımlıyoruz
    User[] public users;

    function doOperations() external {
        User memory user1 = User("Joe", 34, msg.sender);
        User memory user2 = User({name: "Alice", age: 23, wallet: msg.sender});
        User memory user3;
        user3.name = "Emir";
        user2.age = 20;
        user3.wallet = msg.sender;

        users.push(user1);
        users.push(user2);
        users.push(user3);
    }
}
