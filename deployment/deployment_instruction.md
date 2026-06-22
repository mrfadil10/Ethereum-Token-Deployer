# Deployment Instructions for MyToken42

This token was deployed using Remix IDE and MetaMask on the Sepolia Testnet.

## Prerequisites
1. A Web3 wallet (MetaMask) installed and configured.
2. Network set to Sepolia Network (Chain ID: 11155111).
3. Wallet funded with test BNB (Tbnb) from the official BNB Chain Faucet.

## Deployment Steps
1. Open Remix IDE (https://remix.ethereum.org).
2. Load the `Token42.sol` file from the `/code` directory.
3. In the Solidity Compiler tab:
   - Set Compiler version to 0.8.20.
   - Expand Advanced Configurations and set the EVM version to 'Paris' (or 'Cancun') to avoid opcode errors.
   - Enable Optimization (200 runs).
   - Click Compile.
4. In the Deploy & Run Transactions tab:
   - Set the Environment to "Injected Provider - MetaMask".
   - Confirm the MetaMask prompt to connect your wallet.
   - Select the `MyToken42` contract.
   - Input the initial owner's wallet address into the constructor argument.
   - Click Deploy and confirm the transaction in MetaMask to pay the gas fee.
5. Once confirmed, copy the resulting contract address to view it on the BSC Testnet Explorer.