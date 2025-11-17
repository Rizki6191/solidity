// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedNumber;

    function setNumber(uint256 newNumber) public {
        storedNumber = newNumber;
    }

    function getNumber() public  view  returns (uint256) {
        return storedNumber;
    }
}