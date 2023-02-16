require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();
require('solidity-docgen');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  defaultNetwork: "fantom_testnet",
  networks: {
    fantom_testnet: {
      url: "https://rpc.ankr.com/fantom_testnet",
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
