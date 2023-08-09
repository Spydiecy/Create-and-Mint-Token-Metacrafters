# Create-and-Mint-Token-Metacrafters
A smart contract that  allows contract owner to mint tokens to a provided address and any user is able to burn and transfer token, made for Eth + Avax Intermediate Assesment 3 on the Metacrafters learning platform.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has
the following functions :-

(1) Public variables that store the details of my Spydiecy coin.

(2) A mapping of addresses to balance.

(3) A mint function that takes two parameters: an address and a amount. The function then increases the total supply by that number and increases the balance of the address provided by the owner by the amount specified (only accessible by the owner address).

(4) A burn function, which works the opposite of the mint function, as it will destroy tokens , burn function has conditionals to make sure the balance of account is greater than or equal to the amount that is supposed to be burned ( accessible by both users and owner).

(5) Lastly, transfer function which lets the user interacting with the contract to transfer tokens from one address to another ( accessible by both users and owner).

## Getting Started

### Functionalities

Using the 'mintTokens' function you can enter the amount of tokens the owner wants to add to a specified address (only Owner).

Using the 'burnToken' function you can enter the number of tokens you want to remove from your balance (both user and Owner).

Using the 'transferTokens' function you can enter the wallet address you want to send tokens to and addd the number of tokens you want to send from your balance (both user and Owner).

The 'balance' button is a mapping of the address and the amount of tokens that address contains.

Using 'TokenAbbre' you can get the abbreviation of the token's name.

Using 'TokenName' you can know the name of the token.

Using 'TokenTotalSupply' you can know the total amount of tokens present.

Using 'TokenDecimals' you can know the total amount of decimal places present.

Using 'Owner' you can know the address of the owner.


### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the code from contract.sol file into your file:

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to latest solidity version (or another compatible version), and then click on the "Compile" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the your contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mintTokens, burnToken function, transferTokens and much more.

## Authors

Tanishq

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
