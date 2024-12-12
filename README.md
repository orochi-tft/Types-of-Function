```
# MyToken Smart Contract

This repository contains the source code for the `MyToken` smart contract, a custom ERC20 token built using Solidity and the OpenZeppelin library. The contract implements features such as minting, burning, and transferring tokens.

## Features

- **Minting:** Only the contract owner can mint new tokens to a specified address.
- **Burning:** Any token holder can burn a portion of their tokens.
- **Transferring:** Token holders can transfer tokens with checks for sufficient balance.
- **Ownership:** The `Ownable` contract restricts certain functions to the contract owner.

## Contract Details

- **Name:** My Token
- **Symbol:** 202110970
- **Standard:** ERC20

## Functions

### `mint(address to, uint256 amount)`
Allows the contract owner to mint new tokens to the specified address.
- `to`: The address that will receive the minted tokens.
- `amount`: The amount of tokens to mint.

### `burn(uint256 amount)`
Allows a token holder to burn a specified amount of their tokens.
- `amount`: The amount of tokens to burn.

### `transfer(address recipient, uint256 amount)`
Overrides the default ERC20 transfer function to include a balance check.
- `recipient`: The address to receive the tokens.
- `amount`: The number of tokens to transfer.
- **Returns:** `true` if the transfer succeeds.

## Prerequisites

To interact with this contract, you will need:
- **Solidity version:** ^0.8.17
- **Dependencies:**
  - [OpenZeppelin Contracts](https://github.com/OpenZeppelin/openzeppelin-contracts)

## Deployment

1. Ensure you have a Solidity development environment (e.g., Hardhat or Truffle).
2. Install the OpenZeppelin library if not already included:
   ```bash
   npm install @openzeppelin/contracts
   ```
3. Compile the contract:
   ```bash
   npx hardhat compile
   ```
4. Deploy the contract using your preferred deployment script or environment.

## Example Usage

### Minting Tokens
The owner can mint tokens as follows:
```solidity
MyToken.mint(0xRecipientAddress, 1000);
```

### Burning Tokens
A token holder can burn tokens they own:
```solidity
MyToken.burn(500);
```

### Transferring Tokens
A token holder can transfer tokens:
```solidity
MyToken.transfer(0xRecipientAddress, 200);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [OpenZeppelin](https://openzeppelin.com/) for providing robust and secure smart contract libraries.
```

