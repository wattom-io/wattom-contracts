pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

contract WattomSlots is ERC721 {
    uint256 public tokenCounter;
    constructor () public ERC721 ("WattomSlots", "WASL"){
        tokenCounter = 0;
    }

    function createSlot(string memory tokenURI) public returns (uint256){
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }
}
