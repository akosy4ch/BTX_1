// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract Aitu_Alibek_your_Kamiluly is ERC20 {
    event TransferInfo(uint256 timestamp, address sender, address receiver, uint256 amount);

    constructor() ERC20("AITU Alibek your Kamiluly", "AITU") {
        _mint(msg.sender, 2000 * 10**18); // Initial supply
    }

    
    function getLatestTransactionTimestamp() external view returns (string memory) {
    return Strings.toString(block.timestamp);
  }

    
    function getTransactionSenderAddress() external view returns (address) {
        return msg.sender;
    }

    
    function getTransactionReceiverAddress() external view returns (address) {
        return address(this);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transfer(recipient, amount);
        if (success) {
            emit TransferInfo(block.timestamp, msg.sender, recipient, amount);
        }
        return success;
    }

   
    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
        bool success = super.transferFrom(sender, recipient, amount);
        if (success) {
            emit TransferInfo(block.timestamp, sender, recipient, amount);
        }
        return success;
    }
}
