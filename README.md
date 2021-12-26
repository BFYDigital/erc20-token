
<h1 align="center">An ERC20 Token based on OpenZeppelin contracts</h1>
<br />

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Configuring Your Token](#configuring)
- [Usage](#usage)
- [Deployment](#deployment)
- [Built Using](#built_using)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

An ERC20 Token that is mintable, burnable, and has a max supply.

## 🏁 Getting Started <a name = "getting_started"></a>

### Remix IDE
Go to http://remix.ethereum.org and create a new workspace.
Under the folder contracts, create a file called "etc20-token.sol" and import the code 

## 🔧 Configuring Your Token <a name = "configuring"></a>

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

## 🎈 Usage <a name="usage"></a>

Compile the code on Remix IDE using the 0.8.2 Solidity Compiler.

## 🚀 Deployment <a name = "deployment"></a>

Deploy your contract using Remix IDE. Ensure you have enough for gas fees and that you are connected to the correct network.

## ⛏️ Built Using <a name = "built_using"></a>

- [Remix](https://remix.ethereum.org) - IDE
- [OpenZeppelin](https://openzeppelin.com/) - Reusable Smart Contracts
- [Solidity](https://soliditylang.org/) - Programming Langauge
