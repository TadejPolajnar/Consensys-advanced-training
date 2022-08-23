// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Arrays_And_Mappings {
    address[] owners;

    constructor(address[] memory addresses) {
        owners = addresses;
    }

    function AddOwner() public {
        owners.push(msg.sender);
    }

    function CheckOwner() public isOwnerCheck {}

    modifier isOwnerCheck() {
        bool isOwned;
        for (uint256 a = 0; a < owners.length; a++) {
            if (owners[a] == msg.sender) {
                isOwned = true;
                break;
            }
        }
        require(isOwned, "not owner");
        _;
    }
}

/*
   In this smart contract, we have used array for storing the owners.
   Task is to modify the contract to use mapping instead of arrays & compare the gas needed to deploy and interact with methods AddOwner and CheckOwner.
*/
