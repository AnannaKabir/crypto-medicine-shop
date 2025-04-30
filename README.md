
# 💊 Crypto Medicine Shop - Ethereum DApp

A decentralized application (DApp) for purchasing medicines online using cryptocurrency. This project leverages **Ethereum smart contracts**, **Truffle**, and **Web3.js** to ensure secure, transparent, and immutable medicine transactions between customers and providers.

## 📽️ Demo Video

Watch the full walkthrough on YouTube:  
[![Crypto Medicine Shop DApp Demo](https://img.youtube.com/vi/Gl_f1EdWfgQ/0.jpg)](https://youtu.be/Gl_f1EdWfgQ)

---

## ⚙️ Technical Overview

### ✅ Smart Contract Features (`MedicineShop.sol`)

- Written in **Solidity**, compiled with Truffle.
- Handles medicine inventory:
  - `addMedicine(string name, uint price, uint quantity)`
  - `buyMedicine(uint id, uint quantity)`
- Uses mappings and arrays to manage dynamic product lists.
- Includes event logging for transaction history.
- Accepts Ether as payment directly on-chain.

### ✅ Ethereum Environment

- **Truffle Framework**: For compiling, deploying, and testing smart contracts.
- **Ganache**: Local Ethereum blockchain simulator for development.
- **MetaMask**: Ethereum wallet used for signing and sending transactions.
- **Web3.js**: Frontend library used to interact with deployed contracts.

---

## 📁 Project Structure

```
medicine-shop/
├── build/                  # Compiled smart contracts (JSON)
├── contracts/              # Solidity contract: MedicineShop.sol
├── migrations/             # Deployment scripts
├── test/                   # Unit tests for contract logic
├── src/                    # Frontend application (HTML/JS/CSS)
├── truffle-config.js       # Truffle network & compiler settings
├── package.json            # Project metadata and dependencies
```

---

## 🚀 Getting Started

### 🔧 Prerequisites

- Node.js & NPM
- Truffle: `npm install -g truffle`
- Ganache (GUI or CLI)
- MetaMask browser extension

### 🔌 Setup & Run

```bash
git clone https://github.com/AnannaKabir/crypto-medicine-shop.git
cd medicine-shop
npm install
truffle compile
truffle migrate --network development
npm run dev   # or live-server src/
```

> Ensure MetaMask is connected to your Ganache network.

---

## ✅ Testing Smart Contracts

```bash
truffle test
```

Unit tests cover:
- Correct medicine registration
- Payment flow
- Stock updates
- Buyer validations

---\

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
