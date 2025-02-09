// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./IERC20.sol";

contract LXBWS is IERC20 {
    string public name = "";
    string public symbol = "";
    uint8 public decimals = 0;
    uint256 private _totalSupply;

    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    // Return the total supply of the token
    function totalSupply() public view override returns (uint256) {
        // TODO
    }

    // Return the balance of a specific account
    function balanceOf(address account) public view override returns (uint256) {
        // TODO
    }

    // Transfer tokens to a recipient (i.e., subtract from the sender and add the same amount of tokens to the recipient)
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        // TODO
    }

    // Approve a spender to spend a specific amount of tokens on behalf of the sender
    // An example: Alice approves Bob to spend 100 tokens on her behalf
    // Bob can then call transferFrom to transfer tokens from Alice's account to another account
    function approve(address spender, uint256 amount) public override returns (bool) {
        // TODO
    }

    // View the allowance of a spender -- this function returns the amount of tokens that the owner has approved the spender to spend
    // An example: Alice approved Bob to spend 100 tokens on her behalf using the approve function
    // Bob can then call this function to check how many tokens he is allowed to spend on behalf of Alice
    function allowance(address owner, address spender) public view override returns (uint256) {
        // TODO
    }

    // Transfer tokens on behalf of another account (i.e., transfer tokens from a specific account to another account)
    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        // TODO
    }

    // Mint new tokens to an account (only for demonstration purposes)
    // Allows the contract owner to mint new tokens to an account
    function mint(address account, uint256 amount) public {

        // we first check if the address we are minting tokens to is the null address
        require(account != address(0), "Mint to the zero address");

        // since we are minting (creating) new tokens, we need to increase the total supply
        _totalSupply += amount;

        // we also need to increase the balance of the account we are minting tokens to
        _balances[account] += amount;

        // we emit a Transfer event to log the minting of new tokens
        emit Transfer(address(0), account, amount);
    }
}
