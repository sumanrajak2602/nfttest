pragma solidity 0.5.0;

import "./ERC721Full.sol";

contract TokenTest is ERC721Full {

string[] public token;
  mapping(string => bool) tokenExists;

  constructor() ERC721Full("TokenTest", "TKNTEST") public {
  }

   function mint(string memory _token) public {
    require(!tokenExists[_token]);
    uint _id = token.push(_token);
    _mint(msg.sender, _id);
    tokenExists[_token] = true;
  }

  

}