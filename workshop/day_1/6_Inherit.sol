// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Inherit {
    uint256 val;

    function Work(uint256 i) public {
        val = DoWork(i);
    }

    function DoWork(uint256 start) private pure returns (uint256) {
        for (uint256 i = 1; i < 100; i++) {
            start++;
        }
        return start;
    }
}

/*
    In this smart contract, the task is to use inheritance to optimize & modularize the contract.
*/
