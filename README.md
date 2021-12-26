
<h1 align="center">An ERC20 Token based on OpenZeppelin contracts</h1>
<br />

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Configuring Your Token](#configuring)
- [Usage](#usage)
- [Deployment](#deployment)
- [Built Using](#built_using)
- [Mint Token](#minting)
- [Burn Token](#burning)

## About <a name = "about"></a>

It's an example of ERC20 Token that mintable, burnable, and has a max supply.

## Getting Started <a name = "getting_started"></a>

### Remix IDE
Go to http://remix.ethereum.org and create a new workspace.
Under the folder contracts, create a file called "etc20token.sol" and import the code 

if you are using remix and get error, you should replace import packages to with urls like this.
```
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/access/Ownable.sol";
```

## Configuring Your Token <a name = "configuring"></a>

### Set Max Supply

Set the max supply of your token by modifying the variable _maxSupply on line 9
```
    uint256 private _maxSupply = 10000000 * 10 ** decimals();
```
The max supply is set at 10000000 (10M) coins, change this accordingly to fit your needs. The max supply of tokens will never change after deployment as it will be hard-coded into the contract.

### Name Your Coin

Change the name of your token by going to line 11 and changing the text inside the quotation.

```
    constructor() ERC20("BFY Digital", "BFY") {
```
The first quotation "BFY Digital" is the coin name. The second quotation "BFY" is the symbol of the coin. Change these according to your needs.

### PreMint Amount

Change the premint amount by going to line 12 and changing the number
```
     _mint(msg.sender, 1000000 * 10 ** decimals());
```

## Usage <a name="usage"></a>

Compile the code on Remix IDE using the 0.8.2 Solidity Compiler.

## Deployment <a name = "deployment"></a>

Deploy your contract using Remix IDE. Ensure you have enough for gas fees and that you are connected to the correct network.

## ⛏️ Built Using <a name = "built_using"></a>

- [Remix](https://remix.ethereum.org) - IDE
- [OpenZeppelin](https://openzeppelin.com/) - Reusable Smart Contracts
- [Solidity](https://soliditylang.org/) - Programming Langauge

## Mint Token <a name = "minting"></a>

After deployment, you can call "mint" function from owner account with "erc20 address" and "amount" parameters. (on line: 19)

## Burn Token <a name = "minting"></a>

If you want to bunn some token, you can call "mint" function from owner account with "0x0000000000000000000000000000000000000000" (genesis address) and "amount" parameters. (on line: 19)

