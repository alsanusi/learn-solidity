//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Function {
    // Function
    string name = "Example 1";

    // Write Function
    // Write information will produce a gas fee
    function setName(string memory _name) public {
        name = _name;
    }

    // Get Function
    function getName() public view returns (string memory) {
        return name;
    }

    function resetName() internal {
        name = "Example 1";
    }
}
