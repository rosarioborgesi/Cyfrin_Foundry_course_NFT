# Cyfrin Foundry Course - NFT Challenge Solutions

This repository contains smart contract solutions for the NFT challenges from the [Cyfrin Foundry Full Course](https://github.com/Cyfrin/foundry-full-course-cu).

## 📋 Overview

This repo includes solutions to specific challenges that involve interacting with NFT contracts and solving on-chain puzzles as part of the Cyfrin Foundry learning curriculum.

## 📁 Repository Contents

### Smart Contracts

- **`FoundryFundamentalsSection4Nft.sol`** - Solution for Foundry Fundamentals Section 4 NFT challenge
  - Implements `IERC721Receiver` to handle NFT transfers
  - Solves a randomness-based challenge using `block.prevrandao` and timestamps
  - Automatically transfers received NFTs to a specified EOA address
  - **Contract Address**: [0x33e1fD270599188BB1489a169dF1f0be08b83509](https://sepolia.etherscan.io/address/0x33e1fD270599188BB1489a169dF1f0be08b83509#code) (Sepolia)

- **`AdvancedFoundrySection1Nft.sol`** - Solution for Advanced Foundry Section 1 NFT challenge
  - Creates an ERC20 token contract (`AdvancedFoundryToken`)
  - Implements a challenge solution that requires token approval
  - Initial supply of 10,000 AFT tokens
  - **Contract Address**: [0xE0aE410a16776BCcb04A8d4B0151Bb3F25035994](https://sepolia.etherscan.io/address/0xE0aE410a16776BCcb04A8d4B0151Bb3F25035994#code) (Sepolia)

## 🔧 Technical Details

### Dependencies
- OpenZeppelin Contracts
  - `@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol`
  - `@openzeppelin/contracts/token/ERC721/ERC721.sol`
  - `@openzeppelin/contracts/token/ERC20/ERC20.sol`

## 🚀 Deployment & Usage

### Deployment Information
These contracts have been deployed using **Remix IDE** on the **Sepolia testnet**. 

### Usage
These contracts are designed to be deployed and used specifically for solving the Cyfrin course challenges. Each contract contains:

1. **Challenge solving functions** that interact with the course's challenge contracts
2. **Proper interface implementations** for handling NFTs and tokens
3. **Hardcoded addresses** for the specific challenge deployments

## 📚 Learning Resources

- [Cyfrin Foundry Full Course](https://github.com/Cyfrin/foundry-full-course-cu)
- [Foundry Documentation](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts Documentation](https://docs.openzeppelin.com/contracts/)

## ⚠️ Important Notes

- These contracts contain hardcoded addresses specific to the course challenges
- Twitter handle "rosarioborgesi" is used for challenge submissions
- Contracts are designed for educational purposes as part of the Cyfrin course

---

*Part of the Cyfrin Foundry learning journey* 🎓
