//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Constructor {
    // Constructor
    string public name;

    /* Function that's run once and only once whenever the contract is initialized or put on a blockchain
    - Also can make it as payable so we can send ether, except we can only call it once.
    */
    constructor(string memory _name) {
        name = _name;
    }
}
