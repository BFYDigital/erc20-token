// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BFYToken is ERC20, ERC20Burnable, Ownable {    
    uint256 private _maxSupply = 10000000 * 10 ** decimals();

    constructor() ERC20("BFY Digital", "BFY") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

     function getMaxSupply() public view returns (uint256) {
         return _maxSupply;
     }

     function mint(address to, uint256 amount) public onlyOwner {
         require(totalSupply() + amount <= getMaxSupply(), "Total is more the max supply.");
         _mint(to, amount);
     }
}
