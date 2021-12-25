// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v3.4.0-solc-0.7/contracts/token/ERC20/ERC20.sol";

contract BFYToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("BFY Token", "BFY") public {
        _mint(msg.sender, initialSupply);
    }
}
