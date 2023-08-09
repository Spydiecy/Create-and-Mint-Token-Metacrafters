// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract myToken {
    address public owner;
    string public TokenName;
    string public TokenAbbre;
    uint8 public TokenDecimals;
    uint256 public TokenTotalSupply;

    constructor() {
        owner = msg.sender;
        TokenName = "Spydiecy";
        TokenAbbre = "SPY";
        TokenDecimals = 10;
        TokenTotalSupply = 0;
    }

    modifier Owner() {
        require( msg.sender == owner, "Only the owner can mint tokens.");
        _;
    }

    mapping(address => uint256) public balance;

    function mintTokens(address to, uint256 amount) public Owner{
        TokenTotalSupply += amount;
        balance[to] += amount;
    }

    function transferTokens(address reciever, uint256 amount) public {
        require( balance[msg.sender] >= amount, "Kindly select an amount equal to or lower than your current balance." );

        balance[msg.sender] -= amount;
        balance[reciever] += amount;
    }

    function burnToken(uint256 amount) public {
        require( balance[msg.sender] >= amount,"Kindly select an amount equal to or lower than your current balance,");

        TokenTotalSupply -= amount;
        balance[msg.sender] -= amount;
    }
}
