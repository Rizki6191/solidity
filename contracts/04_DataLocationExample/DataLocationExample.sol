// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocationExample {
    string[] public names;

    function addName(string memory newName) public {
        names.push(newName);
    }

    function getName(uint256 index) public view returns (string memory) {
        return names[index];
    }

    function updateName(uint256 index, string memory newName) public {
        names[index] = newName;
    }

    function getAllNames() public view returns (string[] memory) {
        return names;
    }
}