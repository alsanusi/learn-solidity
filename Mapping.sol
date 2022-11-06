//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Mapping {
    // Mapping
    mapping(uint => string) public names;
    mapping(uint => address) public addresses;
    mapping(address => uint) public balances;
    mapping(address => bool) public hasVoted;
    mapping(address => mapping(uint => bool)) public myMapping;

    function get(uint _id) public view returns (string memory) {
        return names[_id];
    }

    function set(uint _id, string memory _value) public {
        names[_id] = _value;
    }

    function remove(uint _id) public {
        // Resets the value to the default value.
        delete names[_id];
    }
}
