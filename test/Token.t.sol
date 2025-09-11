// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token public token;

    function setUp() public {
        token = new Token("Test Token", "TEST");
    }

    function test_TokenCreation() public {
        assertEq(token.name(), "Test Token");
        assertEq(token.symbol(), "TEST");
        assertEq(token.decimals(), 18);
        assertEq(token.totalSupply(), 0);
    }

    function test_TokenInheritsERC20() public {
        // Test that the token properly inherits ERC20 functionality
        assertTrue(address(token) != address(0));
        assertEq(token.balanceOf(address(this)), 0);
    }
}
