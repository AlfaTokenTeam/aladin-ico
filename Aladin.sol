pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Aladin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Aladin(address _owner)  UpgradeableToken(_owner) {
    name = "Aladin";
    symbol = "alc";
    totalSupply = 270000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}