require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.27", // Specify your Solidity version
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545", // Connects to the Hardhat node
    },
  },
};
