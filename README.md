# Tokenizer - Build Your Own Token

This project involves the creation and deployment of a custom ERC-20/BEP-20 token on a public blockchain.

## Deployment Details
* **Network Used:** Sepolia Testnet (Ethereum)
* **Smart Contract Address:** `0x7772f9e327c74DDeaDdb18Eba28f0D52967c014A`
* **Blockchain Explorer Link:** `https://sepolia.etherscan.io/address/0x7772f9e327c74DDeaDdb18Eba28f0D52967c014A`

## Technical Choices & Reasoning

**1. Blockchain Network: Sepolia Testnet**
I chose to deploy on the Sepolia Testnet. This provides a robust, highly stable, and native Ethereum environment to test the contract's functionality safely without incurring real financial costs for gas fees.

**2. Development Environment: Remix IDE**
I utilized Remix IDE for compiling and deploying the contract. It allowed for rapid prototyping in a local sandboxed virtual machine before injecting the MetaMask provider for the final public testnet deployment.

**3. Token Standard & Libraries: BEP-20 / OpenZeppelin**
To ensure the token is fully compatible with global wallets and exchanges, I implemented the industry-standard interface using OpenZeppelin's `ERC20.sol` library. This guarantees secure, audited implementations of critical functions like `transfer` and `balanceOf`.

**4. Security & Privileges: Access Control**
I imported OpenZeppelin's `Ownable.sol` library to establish strict access control. Specifically, the `mintMore` function is protected by the `onlyOwner` modifier. This critical security choice ensures that only the original deployer can increase the token supply, protecting the token's economic integrity from public manipulation.