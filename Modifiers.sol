//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Modifiers {
    // Modifiers
    string public name = "Alkautsars";
    uint256 public balance;

    /*
    1. view - the contract is not modified the state, but it can read the state
    */
    function getName() public view returns (string memory) {
        return name;
    }

    /*
    2. pure - the contract is not modified the state, and can't read the state
    */
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    /*
    3. payable - receive payment
    */
    function pay() public payable {
        balance = msg.value;
    }
}
