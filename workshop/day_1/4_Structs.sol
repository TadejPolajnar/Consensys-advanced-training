// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Structs {
    Test test;

    struct Test {
        uint256 a;
        uint256 b;
        bytes32 c;
        bytes32 d;
    }

    function InMemoryUsage() public {
        test.a = 1;
        test.b = 2;
        test.c = "a";
        test.d = "b";
    }
}

/*
    In this exercise, modify the contract to use memory to update the storage `test` variable.
    Compare the gas usage for `inMemoryUsage` method. 
*/
