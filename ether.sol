// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public tokenName = "Aman";
    string public tokenAbbr = "Kumar";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    // Function to mint new tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Function to burn tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
