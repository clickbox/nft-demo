pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    contructor() public ERC721("MyNFT", "NFT") {}
    function mintNFT(address recipent, string memory tokenURI)
        public onlyOwner
        returns (unit256)
    {
        _tokenIds.increment();
        unit256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId
    }
    }