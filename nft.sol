// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NCXNFT is ERC721, Ownable {
    constructor() ERC721("NCX NFT", "NCXT") {}

    function _baseURI() internal pure override returns (string memory) {
        return "http://sample.com/";
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}
