// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AdvancedFoundrySection9Nft {
    uint256 public s_variable = 0;
    uint256 public s_otherVar = 0;
    address private s_owner;

    constructor() {
        s_owner = msg.sender;
    }

    function doSomething() external {
        s_variable = 123;
        s_otherVar = 1;
    }

    function doSomething2() external pure returns (bool) {
        return true;
    }

    function getOwner() external view returns (address) {
        return s_owner;
    }

}