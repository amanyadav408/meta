# ETH-PROOF Beginner EVM Course - Metacraft

This is a simple Smart Contract program written in Solidity. The contract allows for minting and burning of tokens, while keeping track of balances associated with different addresses. It includes the following features:

- Public variables to store token details such as name, abbreviation, and total supply.
- A mapping to track balances of different addresses.
- Functions to mint and burn tokens, updating the total supply and balances accordingly.

## Getting Started

To run this code, follow these steps:

1. Go to [Remix Ethereum IDE](https://remix.ethereum.org).
2. Import code.sol.
3. Run and debug the code.

### Executing program
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., eth2.sol). Copy and paste the following code into the file:
```javascript
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

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "eth2" contract from the dropdown menu, and then click on the "Deploy" button.

## Author

Created by: Aman Kumar

## License

This project is licensed under the MIT License.
