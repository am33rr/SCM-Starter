# Color Market DApp

This is a decentralized application (DApp) for buying and selling colors on the Ethereum blockchain.

## Features:

- Allows users to connect their MetaMask wallet.
- Displays the user's Ethereum account and balance.
- Provides buttons to buy and sell colors using Ethereum.
- Utilizes the Solidity smart contract `Assessment.sol`.
- Developed with React, ethers.js, and Hardhat.

### Available Colors and their prices

* Red - 2
* Yellow - 4
* Green - 6

## How to Use:

1. Clone this repository.
2. Install dependencies using `npm install`.
3. Run a local Ethereum node `npx hardhat node`.
4. Compile the smart contract using Hardhat: `npx hardhat compile`.
5. Deploy the smart contract to your local network: `npx hardhat run scripts/deploy.js --network localhost`.
6. Start the  application: `npm run dev`.
7. Connect your MetaMask wallet to interact with the DApp.

## Smart Contract:

The smart contract `Assessment.sol` maintains a balance of Ethereum and an array of purchased colors. Users can buy and sell colors using Ethereum.

## Authors

Ameer S

Email - am33rrss@gmail.com

## License

This project is UNLICENSED.
