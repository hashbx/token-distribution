/**
 * HashBX Company Limited (info@hashbx.io)
 * Author: Makkhawan Voraboot
 * Mining by placing digital tokens on the smart contract as securities.
*/

pragma solidity ^0.4.18;

import '../Helpers/ERC20/StandardToken.sol';
import '../Helpers/ERC20/BurnableToken.sol';
import '../Helpers/ownership/Ownable.sol';

contract HBXToken is StandardToken, BurnableToken, Ownable {

  // Constants
  string  public constant name = "HashBX";
  string  public constant symbol = "HBX";
  uint8   public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 1000000 * (10 ** uint256(decimals));

  // Properties
  address public creatorAddress;

  /**
   * Constructor - instantiates token supply and allocates balance of
   * to the admin (msg.sender).
  */
  function HBXToken(address _creator) public {

    // Mint all token to creator
    balances[msg.sender] = INITIAL_SUPPLY;
    totalSupply_ = INITIAL_SUPPLY;

    // Set creator address
    creatorAddress = _creator;
  }

}
