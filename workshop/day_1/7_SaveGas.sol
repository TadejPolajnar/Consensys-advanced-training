// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract SaveGas {
    uint8 resulta = 0;
    uint256 resultb = 0;

    function UseUint() external view returns (uint256) {
        uint256 selectedRange = 50;
        uint256 resultbMem = resultb;
        for (uint256 i = 0; i < selectedRange; i++) {
            resultbMem += 1;
        }
        return resultbMem;
    }
}

/*
    In this contract, the task is to modify the UseUint() method to use memory for accessing the variable.
    Check the difference in gas usage when calling the method.
*/
