# CustomToken Smart Contract

## Overview
This repository contains the `CustomToken` smart contract, a simple implementation of an ERC-20-like token written in Solidity. It allows minting, transferring, and burning of tokens with basic functionalities.

---

## Features

- **Token Details**:
  - **Name**: `CustomToken`
  - **Symbol**: `CTK`
  - **Decimals**: `18`
- **Ownership**:
  - Only the contract owner can mint new tokens.
- **Key Functions**:
  - `mint()`: Allows the owner to create new tokens.
  - `transfer()`: Enables transferring tokens between accounts.
  - `burn()`: Allows token holders to destroy their tokens.
  - `balanceOf()`: Retrieves the balance of a specific address.
- **Event Logging**:
  - `Transfer`: Tracks token transfers.
  - `Burn`: Logs token burns.
  - `Mint`: Records token minting.

---

## Prerequisites

- **Solidity**: ^0.8.13
- **Blockchain Platform**: Compatible with Ethereum-based platforms
- **Development Environment**: Use tools like:
  - [Remix](https://remix.ethereum.org/)
  - [Hardhat](https://hardhat.org/)
  - [Truffle](https://www.trufflesuite.com/)

---

## Deployment Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo-name.git
   cd your-repo-name
