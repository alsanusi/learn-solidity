//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract CustomModifier {
    // Modifiers
    address private owner;
    string public name = "";

    modifier onlyOwner {
        require(msg.sender == owner, "caller must be owner");
        _;
    }

    // Where only Owner
    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
}
