//SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import { PokeMeReady } from "./PokeMeReady.sol";

/**
@title Cools EOAs and smart contract accounts by measuring, calculating and purchasing renewable energy and carbon credits
@author Mohamed Hassan
@notice This contract is only for interview purposes. 
@dev Inherits PokeMeReady to restrict chosen function calls to be initiated by Gelato Executors
 */
contract Cooler is PokeMeReady {

  event GoGreen(address indexed sender);

  event SetPurpose(address indexed sender, string message);

  event Reset(address indexed sender);
  
  event Fund(address indexed sender);

  address public admin;
  uint256 public balance = 10;
  uint256 public price = 1;
  uint256 public lastExecuted;
  bool public isGreen = false;

  string public purpose = "Building Unstoppable Green Apps!!!";


  modifier onlySufficientBalance() {
        require(balance > price, "Should have a balance greater than or equal to the price.");
        _;
    }
  
  modifier onlyAdmin() {
        require(msg.sender == admin, "Should be an admin.");
        _;
    }

  constructor(address payable _pokeMe, address _admin) PokeMeReady(_pokeMe) {
    admin = _admin;
    lastExecuted = block.timestamp;
  }

  function goGreen() onlySufficientBalance onlyPokeMe external {
    balance -= 1;
    isGreen = true;
    lastExecuted = block.timestamp;
    emit GoGreen(msg.sender);
  }

  function reset() public onlyPokeMe {
      isGreen = false;
      balance = 10;
      emit Reset(msg.sender);
  }

  function fund() public onlyAdmin {
      balance += 10;
      emit Fund(msg.sender);
  }

  function simulateNotGreen() public onlyAdmin {
      isGreen = false;
  }

  /**
  @notice Return the balance of a EOA's or smart contract's account
  @dev Currently only supports one acccount. Could be extended to be multi-account
  @return Balance in XYZ token
   */
  function getBalance() view external returns(uint256) {
    return balance;
  }
 
  /**
  @notice Return the price to purchase renewable/carbon credits and be green.
  @dev Price is currently hard-coded but later should rely on price oracles.
  @return Price in XYZ token
   */
  function getPrice() view external returns(uint256) {
    return price;
  }

}
