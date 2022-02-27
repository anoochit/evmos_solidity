// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NCXToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("NCXToken", "NCX") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }

 

    function mint(address to, uint256 value) public returns (bool) {
        require(value <= 10000000 ether, "dont be greedy");
        _mint(to, value);
        return true;
    }
    
}
