//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Ether {
    // Ether
    uint public value1 = 1 wei;
    uint public value2 = 1;
    // Using for the Gas Fee
    uint public value3 = 1 gwei;
    uint public value4 = 10000000000;
    // Etherium
    uint public value5 = 1 ether;
    uint public value6 = 100000000000000000;

    // Receive ether directly to a smart contract
    receive() external payable {}

    uint public count = 0;

    // if data is not present
    fallback() external payable {
        count ++;
    }

    // check balance
    function checkBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Transfer ether
    function transfer(address payable _to) public payable {
        msg.sender;
        (bool sent,) = _to.call{value: msg.value}("");
        require(sent, "Failed!");
    }
}
