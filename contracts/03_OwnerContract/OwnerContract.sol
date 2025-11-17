// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerContract {
    address public owner;
    uint256 private secretNumber;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function setSecureSecretNumber(uint256 secureNumber) public onlyOwner {
        secretNumber = secureNumber;
    }

    function getSecureSecretNumber() public view returns (uint256) {
        return secretNumber;
    }
}