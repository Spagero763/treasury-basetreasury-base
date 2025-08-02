# 🏛️ DAO Treasury Contract on Base

A simple, verified smart contract for managing DAO funds with proposal creation, voting, and execution logic. Built for the [Talent Protocol Base Builder Rewards](https://app.talentprotocol.com/) program.

---

## 📜 Contract Details

- **Name:** `DAOTreasury`
- **Network:** Base Sepolia Testnet
- **Contract Address:** [`0xE92714Acd2fE08039D9a57eD7ef492667f8D3703`](https://sepolia.basescan.org/address/0xE92714Acd2fE08039D9a57eD7ef492667f8D3703)
- **Status:** ✅ Verified on BaseScan
- **Deployed From:** Remix IDE

---

## 🛠️ Features

- `addMember(address)` – Add new DAO member (onlyOwner)
- `createProposal(description, recipient, amount)` – Propose ETH transfers
- `vote(id)` – Vote on proposals (only once per member)
- `execute(id)` – Executes proposal if majority vote is met
- `getBalance()` – View DAO treasury balance
- `receive()` – Accepts ETH deposits

---

## 🧪 How to Test (Remix)

1. Open in [Remix](https://remix.ethereum.org/)
2. Connect Metamask to **Base Sepolia**
3. Deploy the contract
4. Use the following flow:
   - Send ETH to the contract via Remix
   - Add members
   - Create a proposal
   - Vote using 2 or more members
   - Execute proposal if votes ≥ 2

---

## 💡 Use Case

This contract simulates a lightweight DAO treasury system on **Base**, where members can:
- Propose spending actions
- Vote on fund allocations
- Execute transfers on-chain

---

## 🌐 Live Explorer Link

🔗 [View Contract on BaseScan](https://sepolia.basescan.org/address/0xE92714Acd2fE08039D9a57eD7ef492667f8D3703)

---

## 🧑‍💻 Built With

- Solidity `^0.8.18`
- Remix IDE
- Base Sepolia Testnet
- OpenZeppelin Standards

---


## 📬 Contact

Built by [Your Name / Warpcast Handle]  
Farcaster: [`@yourhandle`](https://farcaster.xyz/spagero)  
GitHub: [`@yourgithub`](https://github.com/Spagero763)

---
