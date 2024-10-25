
# Sharon Project

## Overview

The Sharon project is focused on building a secure and efficient solution to process USDT token transactions on the blockchain. This project aims to integrate with the Spheron protocol and enable seamless transactions using USDT, targeting decentralized applications (dApps) and businesses that require a stablecoin for payments.

## Goals

1. **USDT Integration**: Sharon facilitates the creation and execution of transactions using USDT tokens.
2. **User Wallet Integration**: We aim to ensure smooth interaction between blockchain wallets (like Metamask) and our platform.
3. **Blockchain-Based Payment Solution**: The project aims to provide an accurate, secure, and scalable payment solution using blockchain technology.

## Features

- Secure transaction execution with USDT tokens.
- Easy wallet integration for users.
- Smart contract-based USDT transactions.
- Early-stage testing using Spheron Protocol's test environment.

## Getting Started

### Prerequisites

- **Metamask** connected to the Spheron test network.
- Small amounts of ETH for gas fees in the Arbitrum Sepolia network.

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-repo/sharon-project.git
    cd sharon-project
    ```

2. Install dependencies:

    ```bash
    npm install
    ```

3. Deploy the smart contract:

    ```bash
    npx hardhat run scripts/deploy.js --network sepolia
    ```

### Usage

1. Ensure that you have USDT test tokens in your wallet.
2. Interact with the smart contracts through the provided front-end interface.
3. Track transaction logs and wallet balances in the connected wallet (e.g., Metamask).

## Smart Contracts

The core logic of the USDT transaction processing is written in Solidity.

### Sample Smart Contract:

```solidity
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
```

### Testing

You can run the following command to test the deployment:

```bash
npx hardhat test
```

## Project Roadmap

1. **Phase 1**: Infrastructure setup and smart contract deployment.
2. **Phase 2**: Testing USDT transaction flows on the test network.
3. **Phase 3**: Integrating with payment platforms and expanding wallet support.
4. **Phase 4**: Security audit and mainnet deployment.

## Contributing

We welcome contributions from the community. Please submit pull requests for any changes or enhancements you'd like to see.

## License

This project is licensed under the MIT License.
