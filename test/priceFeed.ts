import { expect } from "chai";
import { Contract } from "ethers";
import { ethers } from "hardhat";

describe("Price Feed", () => {
  let priceFeed: Contract;

  beforeEach(async () => {
    // This function runs before each test, this way we don't have to redeploy
    // the contract for every single test case.
    const PriceFeed = await ethers.getContractFactory("PriceFeed");
    priceFeed = await PriceFeed.deploy();
  });

  it("Gets the PriceFeed contract", async () => {
    const PriceFeed = await ethers.getContractFactory("PriceFeed");
    expect(PriceFeed);
  });

  it("Has the Ether Price Feed Aggregator", async () => {
    const ethPriceFeed = await priceFeed.getEthPriceFeed();
    expect(ethPriceFeed);
  });

  it("Returns the latest price of Ether", async () => {

    const latestPrice = await priceFeed.getLatestPrice(); 

    expect(ethPriceFeed);
  });
});
