

```markdown
# Voting Dapp

Welcome to the Voting Dapp! This project is a decentralized application that allows users to participate in voting processes securely and transparently using the Ethereum blockchain. The application is built with React for the frontend and Solidity for smart contracts, showcasing full-stack integration with blockchain technology.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Running the Application](#running-the-application)
- [Important Note](#important-note)
- [Contributing](#contributing)
- [License](#license)

## Features

- Decentralized voting mechanism using Ethereum blockchain
- User-friendly interface built with React
- Smart contracts for managing votes and candidates
- Ability to add votes and view candidate results in real-time
- Integration with Ethers.js for blockchain interactions

## Technologies Used

- **Ethereum**: Blockchain platform for deploying smart contracts
- **React**: Frontend library for building user interfaces
- **Hardhat**: Ethereum development environment for smart contracts
- **Solidity**: Smart contract programming language
- **Ethers.js**: Library for interacting with the Ethereum blockchain

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Node.js](https://nodejs.org/) (version 14 or later)
- [npm](https://www.npmjs.com/) (comes with Node.js)
- [Git](https://git-scm.com/) (for cloning the repository)
- A local Ethereum blockchain (like [Hardhat](https://hardhat.org/) or [Ganache](https://www.trufflesuite.com/ganache))
- A wallet like [MetaMask](https://metamask.io/) to interact with the Ethereum network

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Mohankotte123/voting-dapp.git
   cd voting-dapp
   ```

2. **Install Dependencies**:
   Navigate to the project directory and install the required packages:
   ```bash
   npm install
   ```

3. **Set Up Hardhat**:
   If you haven't already, you need to initialize Hardhat. Run the following command:
   ```bash
   npx hardhat
   ```

   Follow the prompts to create a basic sample project or configure it as needed.

4. **Compile Smart Contracts**:
   Compile the smart contracts to ensure everything is set up correctly:
   ```bash
   npx hardhat compile
   ```

## Running the Application

1. **Start the Local Blockchain**:
   In a new terminal window, start the Hardhat local blockchain:
   ```bash
   npx hardhat node
   ```

2. **Deploy Smart Contracts**:
   In another terminal window, deploy the smart contracts to the local blockchain:
   ```bash
   npx hardhat run scripts/deploy.js --network localhost
   ```

3. **Start the React Application**:
   In the original terminal window, run the React app:
   ```bash
   npm start
   ```

   The application should now be running on `http://localhost:3000`.

## Important Note

In the project folder, there is a file called `contractDetails.js`. It is essential to replace the contract address in this file each time you deploy a new version of the smart contract. This ensures that the frontend interacts with the correct deployed contract on the blockchain.

## Contributing

Contributions are welcome! If you have suggestions for improvements or want to add features, please fork the repository and create a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
```

