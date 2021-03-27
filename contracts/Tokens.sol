pragma solidity 0.8.0;

import "../node_modules/@openzepellin/contracts/token/ERC721/ERC721.sol";
import "../node_modules/@openzepellin/contracts/access/Ownable.sol";

contract Token is ERC721, Ownable {
  struct Pet {
    uint8 damage;
    uint8 magic;
    uint256 lastMeal;
    uint256 endurance;
  }
  uint256 nextId = 0;

  mapping(uint256 => Pet) private _tokenDetails;
  constructor(string memory name, string memory symbol) ERC721(name, symbol){

  }

  function mint(uint8 damage, uint8 magic, uint8 endurance) public onlyOwner {
    _safeMint(msg.sender, nextId)
    nextId++;
    Pet(magic, damage, block.timestamp, endurance)
  }
}
