// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

interface LessonNine {
    function solveChallenge(
        uint256 randomGuess,
        string memory yourTwitterHandle
    ) external;
}

contract FoundryFundamentalsSection4Nft is IERC721Receiver {
    address constant CHALLENGE_ADDRESS = 0x33e1fD270599188BB1489a169dF1f0be08b83509;
    address constant MY_EOA = 0x01BF49D75f2b73A2FDEFa7664AEF22C86c5Be3df;
    address constant NFT_ADDRESS = 0x76B50696B8EFFCA6Ee6Da7F6471110F334536321;

    function solveChallenge() external {
        uint256 answer = uint256(
            keccak256(
                abi.encodePacked(address(this), block.prevrandao, block.timestamp)
            )
        ) % 100000;

        LessonNine(CHALLENGE_ADDRESS).solveChallenge(answer, "rosarioborgesi");
    }

    function onERC721Received(
        address /*operator*/,
        address /*from*/,
        uint256 tokenId,
        bytes calldata /*data*/
    ) external override returns (bytes4) {
        ERC721(NFT_ADDRESS).safeTransferFrom(address(this), MY_EOA, tokenId);
        return IERC721Receiver.onERC721Received.selector;
    }
}
