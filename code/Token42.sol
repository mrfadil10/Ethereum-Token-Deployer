// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

// Import standard secure contracts from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Your contract inherits from ERC20 and Ownable
contract MyToken42 is ERC20, Ownable {

    // The constructor runs ONCE when you deploy the contract
    constructor(address initialOwner)
        ERC20("Tokeni42", "TKN42") // <-- Rule check: Contains "42"
        Ownable(initialOwner) // Sets the deployer as the owner for privileges
    {
        // Mint an initial supply of 1,000,000 tokens to the person who deploys it
        // Note: Tokens use 18 decimal places by default, so we multiply by 10**decimals()
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    // Example of a privileged action: Only the owner can mint MORE tokens later
    function mintMore(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
