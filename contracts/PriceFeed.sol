// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "hardhat/console.sol";

contract PriceFeed {
    AggregatorV3Interface internal ethPriceFeed;

    /**
     * Network: Mainnet
     * Aggregator: ETH/USD
     * Address: 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
     * You can get the addresses for more networks and more tokens here at the
     * chainlink docs: https://docs.chain.link/docs/reference-contracts/
     */
    constructor() {
        ethPriceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
    }

    function getEthPriceFeed() public view returns (AggregatorV3Interface) {
        return ethPriceFeed;
    }

    /**
     * This function calls the latestRoundData function defined in the
     * AggregatorV3Interface.sol file. You can read more about it here:
     * https://docs.chain.link/docs/get-the-latest-price/
     *
     * We're only making use of the price and timestamp being returned.
     */
    function getLatestPrice() public view returns (int) {
        (, int price, , uint timeStamp, ) = ethPriceFeed.latestRoundData();

        // if the round is not complete yet, timestamp is 0
        require(timeStamp > 0, "round not complete");

        // Uncomment this to see the current price (USD) on your terminal
        // console.logInt(price / 10**8);
        return price;
    }
}
