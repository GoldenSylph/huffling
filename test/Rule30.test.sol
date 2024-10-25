// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import { HuffDeployer } from "foundry-huff/HuffDeployer.sol";
import { Test } from "forge-std/Test.sol";
import { console } from "forge-std/console.sol";

import { Role30 } from "../script/huffInterfaces/Rule30.sol";

contract Rule30Test is Test {
    /// @dev Address of the Rule30 contract.
    Rule30 public rule30;

    /// @dev Setup the testing environment.
    function setUp() public {
        rule30 = Rule30(HuffDeployer.deploy("Rule30"));
    }

    /// @dev Ensure that you can success test the cellular automata
    function testRule30() public {
        rule30.initState();
        rule30.iterateCells();
    }
}