import { HardhatUserConfig } from "hardhat/config";
import "dotenv/config";
import "@nomicfoundation/hardhat-toolbox";

const ALCHEMY_MAINNET_URL = process.env.ALCHEMY_MAINNET_URL;

const config: HardhatUserConfig = {
  solidity: "0.8.9",
  networks: {
    hardhat: { forking: { url: ALCHEMY_MAINNET_URL! } },
  },
};

export default config;
