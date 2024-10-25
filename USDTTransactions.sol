
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract USDTTransactions {
    address public owner;

    event TransactionExecuted(address indexed from, address indexed to, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function executeTransaction(address to, uint256 amount) external payable {
        require(msg.value >= amount, "Insufficient funds");
        payable(to).transfer(amount);
        emit TransactionExecuted(msg.sender, to, amount);
    }
}
