// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import { HuffDeployer } from "foundry-huff/HuffDeployer.sol";
import { Script } from "forge-std/Script.sol";

import { Role30 } from "./huffInterfaces/Rule30.sol";

contract Deploy is Script {
  function run() public returns (Rule30 rule30) {
    rule30 = Role30(HuffDeployer.deploy("Rule30"));
  }
}