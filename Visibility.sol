//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Visibility {
    // Visibility
    string name1 = "Name 1";
    // Private - Only Accessible inside the Smart Contract
    string private name2 = "Name 2";
    // Internal - Only Accessible inside the Smart Contract, but can be Inherited
    string internal name3 = "Name 3";
    // Public - Accessible Inside, Outside and can be Inherited
    string public name4 = "Name 4";
}
