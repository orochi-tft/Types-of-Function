// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract CustomToken {
    // State variables
    address public owner; // Contract owner
    string public name = "CustomToken"; // Token name
    string public symbol = "CTK"; // Token symbol
    uint8 public decimals = 18; // Token decimals
    uint public totalSupply; // Total token supply

    // Mapping to track user balances
    mapping(address => uint) public balances;

    // Events for logging important actions
    event Transfer(address indexed from, address indexed to, uint amount);
    event Burn(address indexed burner, uint amount);
    event Mint(address indexed to, uint amount);

    // Modifier to restrict actions to the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action.");
        _;
    }

    // Constructor to initialize the owner
    constructor() {
        owner = msg.sender;
    }

    // Function for the owner to mint new tokens
    function mint(address to, uint amount) public onlyOwner {
        require(to != address(0), "Cannot mint to the zero address.");
        require(amount > 0, "Mint amount must be greater than zero.");

        // Increase total supply and update recipient's balance
        totalSupply += amount;
        balances[to] += amount;

        emit Mint(to, amount);
    }

    // Function to transfer tokens from the sender to another address
    function transfer(address to, uint amount) public {
        require(to != address(0), "Cannot transfer to the zero address.");
        require(amount > 0, "Transfer amount must be greater than zero.");
        require(balances[msg.sender] >= amount, "Insufficient balance.");

        // Update balances
        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }

    // Function to burn tokens, removing them from circulation
    function burn(uint amount) public {
        require(amount > 0, "Burn amount must be greater than zero.");
        require(balances[msg.sender] >= amount, "Insufficient balance to burn.");

        // Decrease total supply and update sender's balance
        balances[msg.sender] -= amount;
        totalSupply -= amount;

        emit Burn(msg.sender, amount);
    }

    // Function to check the balance of a specific address
    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }
}
