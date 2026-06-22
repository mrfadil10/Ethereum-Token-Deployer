# User Guide: MyToken42

Welcome to MyToken42! This is a BEP-20 standard token built on the BNB Smart Chain Testnet.

## What You Need to Use This Token
To interact with MyToken42, you will need:
1. A Web3 Wallet (like MetaMask).
2. A small amount of SepoliaETH to pay for transaction fees.

## How to View Your Balance in MetaMask
Because this is a custom token, it won't appear in your wallet automatically. You must import it:
1. Open MetaMask and ensure your network is set to the **Sepolia Testnet**.
2. Scroll to the bottom of the "Tokens" tab and click **Import tokens**.
3. Paste the Smart Contract Address, example: `0x7772f9e327c74DDeaDdb18Eba28f0D52967c014A`
4. The Token Symbol (`TKN42`) and Decimals (`18`) should auto-fill.
5. Click **Add Custom Token** and then **Import Tokens**. You will now see your balance!

## How to Transfer Tokens
1. Open MetaMask and click on `TKN42` from your asset list.
2. Click **Send**.
3. Paste the recipient's public wallet address.
4. Enter the amount of tokens you wish to send.
5. Click **Next**, review the estimated gas fee, and click **Confirm**.

## Security & Privileges
This token utilizes OpenZeppelin's `Ownable` architecture.
* **Public Actions:** Anyone with a balance can freely transfer their tokens.
* **Restricted Actions:** Only the designated owner of the contract can mint additional tokens. This ensures the total supply cannot be artificially inflated by malicious users.