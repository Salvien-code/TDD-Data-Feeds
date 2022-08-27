// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceFeed {
    AggregatorV3Interface internal ethPriceFeed;

    /**
     * Network: Goerli
     * Aggregator: ETH/USD
     * Address: 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
     * You can get the addresses for more networks and more tokens here at the
     * chainlink docs: https://docs.chain.link/docs/reference-contracts/
     */
    constructor() {
        ethPriceFeed = AggregatorV3Interface(
            0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
        );
    }

    function getEthPriceFeed() public view returns (AggregatorV3Interface) {
        return ethPriceFeed;
    }

    
}
