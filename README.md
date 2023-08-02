# eth-avax_project1

# function.sol

This Repo is made for an Assessments for the eth-beginner project for Metacrafters. The purpose of this Repository is to showcase my knowledge and understanding of the smart contracts and especially, about creating my own Tokens,with mentioned requirements.

Description
This Repository consists of a contract named function.sol written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. It explain the uses the require(), assert(), and revert() statements in a function written in solidity:

Getting Started
Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., TokenContract.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Contract {
    uint256 public value;
    
    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0"); // Check that the value is greater than 0
        value = _value;
    }
    
    function doubleValue() public {
        uint256 newValue = value * 2;
        assert(newValue > value); // Check that the new value is greater than the old value
        value = newValue;
    }
    
    function resetValue() public {
        value = 0;
        revert("Value has been reset"); // Revert with a message
    }
}
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile function.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "function.sol" contract from the dropdown menu, and then click on the "Deploy" button. Before Deploying ,you need to pass the value for name,symbol and total supply of tokens as mentioned in constructor.

Once the contract is deployed, you can interact with it by calling the function.

Authors
CodeCracker2 (https://github.com/CodeWithNoob )

License
This project is licensed under the MIT- see the LICENSE.md file for details
