# LotteryProject

A simple Ethereum smart contract lottery system built and tested using [Remix IDE](https://remix.ethereum.org/). The contract allows users to participate by sending 2 ETH. Once 3 or more participants join, the manager can pick a random winner who receives the entire contract balance.

---

## Overview

- Participants enter the lottery by sending exactly 2 ETH.
- All participant addresses are stored in a dynamic array.
- Only the contract deployer (manager) can pick the winner.
- Winner is selected using pseudo-random logic (`keccak256`).
- All ETH is transferred to the winner, and the array is reset.

---

## Tech Stack

- **Smart Contract Language**: Solidity (`^0.8.0`)
- **Development Environment**: Remix IDE
- **Blockchain Network**: Sepolia Testnet (optional)

---

## File

- `Lottery.sol` – Main smart contract containing all logic
