// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

interface LessonNine {
    function solveChallenge(
        string memory yourTwitterHandle
    ) external;
}

contract AdvancedFoundrySection1Nft is ERC20 {
    uint256 private constant COST_TO_SOLVE = 1e18;
    uint256 private constant INITAL_SUPPLY = 10000 * 10**18;
    address private constant CHALLENGE_ADDRESS = 0xE0aE410a16776BCcb04A8d4B0151Bb3F25035994;
    LessonNine private immutable i_lessonNine;

    constructor() ERC20("AdvancedFoundryToken", "AFT") {
        _mint(msg.sender, INITAL_SUPPLY);
        i_lessonNine = LessonNine(CHALLENGE_ADDRESS);
    }

    function solveChallenge() external {
        approve(CHALLENGE_ADDRESS, COST_TO_SOLVE);
        i_lessonNine.solveChallenge("rosarioborgesi");
    } 
}