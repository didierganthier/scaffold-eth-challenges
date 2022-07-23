pragma solidity >=0.8.0 <0.9.0;
// SPDX-License-Identifier: MIT
// import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract DEX {
  
  using SafeMath for uint256;
  IERC20 token;

  uint256 public totalLiquidity;
  mapping (address => uint256) public liquidity;

  constructor(address token_addr) {
    token = IERC20(token_addr);
  }

  function init(uint256 tokens) public payable returns (uint256) {
    require(totalLiquidity == 0, "DEX already hass liquidity");
    totalLiquidity = address(this).balance;
    liquidity[msg.sender] = totalLiquidity;
    require(token.transferFrom(msg.sender, address(this), tokens));
    return totalLiquidity;
  }

  function price(uint256 input_amount, uint256 input_reserve, uin256 output_reserve) public view returns(uint256){
    uint256 input_amount_with_fee = input_amount.mul(997);
    uint256 numerator 
  }
}