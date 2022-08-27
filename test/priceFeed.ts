import { expect } from "chai";
import { Contract } from "ethers";
import { ethers } from "hardhat";

describe("Price Feed", () => {
  let priceFeed: Contract;

  beforeEach(async () => {
    // This function runs before each test, this way we don't have to redeploy
    // the contract for every single test case.
    const PriceFeed = await ethers.getContractFactory("PriceFeed");
    const priceFeed = await PriceFeed.deploy();
  });

  it("Gets the PriceFeed contract", async () => {
    const PriceFeed = await ethers.getContractFactory("PriceFeed");
  });

  it("Has the chainlinkAggregator", async () => {
    expect(priceFeed.chainlinkAggregator);
  });
});
