// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Import some OpenZeppelin Contracts which allows for built in functions from Open Zeppelin
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import 'hardhat/console.sol';

contract headbandzNFT is ERC721URIStorage {
    // This is given to us by Open Zeppelin to help us keep track of tokenIds.
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Pass the name of our NFTs token and its symbol to the constructor
    constructor() ERC721 ('Headbandz', 'HBZ') {
        console.log('HEAD....BANDZ!');
    }

    // The function our user will hit to receive their NFT
    function createHeadbandzNFT() public {
        // Get current token. This starts at 0 and increments by 1 each time
        uint256 newItemId = _tokenIds.current();

        //Mint the NFT to the sender
        _safeMint(msg.sender, newItemId);

        // Set the NFTs data
        _setTokenURI(newItemId, 'https://jsonkeeper.com/b/UZXS');

        // Console log to see when the NFT is minted and to who
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        // Increment the tokenIds counter
        _tokenIds.increment();
    }
}