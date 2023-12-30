// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MyToken is ERC20 {
    using Strings for uint256;

    constructor() ERC20("<Aitu_Alibek_your_Kamiluly>", "UNI") {
        _mint(msg.sender, 2000 * (10 ** decimals()));
    }

    function getLatestTransactionTimestamp() public view returns (string memory) {
        return uint256(block.timestamp).toString();
    }

    function getTransactionSender() public view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiver() public view returns (address) {
        return address(0);
    }
}
