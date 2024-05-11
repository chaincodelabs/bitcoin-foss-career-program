# Start Your Career in Bitcoin FOSS


## Acceptance into program

Technical challenges:

[Bitcoin Core Test the Test](https://github.com/chaincodelabs/bitcoin-core-test-the-test)


## Curriculum

Text: Mastering Bitcoin 3rd Edition


### Week 0: Prework

Read:
- Ch. 1 Introduction
- Ch. 2 How Bitcoin Works
- Ch. 3 Bitcoin Core: The Reference Implementation

Provided Infrastructure:
Access mainnet RPC through [proxy](https://github.com/pinheadmz/rpc-auth-proxy)
currently running at `34.172.95.104`

Exercises:
- [Bitcoin Core RPC Scavenger Hunt](https://github.com/chaincodelabs/rpc-scavenger-hunt)


### Week 1: Cryptography

Read:
- Ch. 4 Keys and Addresses
- Ch. 5 Wallet Recovery
- Ch. 6 Transactions

Provided Infrastructure:
We will host a custom signet miner node with a pre-generated blockchain
full of UTXOs for wallet recovery and script challenges.

Exercises:
- [Create a signet wallet](https://github.com/chaincodelabs/signet-wallet-project)
  - [Part 1: Recover balance from chain](https://github.com/chaincodelabs/signet-wallet-project/blob/main/recover_balance.md)


### Week 2: Transactions

Read:
- Ch. 7 Authorization and Authentication
- Ch. 8 Digital Signatures
- Ch. 9 Transaction Fees

Extra tutorial:
[Transaction exercises](https://github.com/chaincodelabs/bitcoin-tx-tutorial)

Exercises:
- [Create a signet wallet](https://github.com/chaincodelabs/signet-wallet-project)
  - [Send a multisig transaction](https://github.com/chaincodelabs/signet-wallet-project/blob/main/send_multisig.md)


### Week 3

Read:
- Ch. 10. The Bitcoin Network
- Ch. 11 The Blockchain
- Ch. 12 Mining and Consensus

Exercises **TBA**


### Week 4

Read:
- Ch. 14 Second-Layer Applications
  - Optional sections (can be skipped): 
    - Colored coins
    - Single-use seals
    - Pay-to-Contract
    - Client-side validation
    - RGB
    - Taproot Assets

Exercises:
- [Lightning scavenger hunt
](https://github.com/chaincodelabs/lightning-scavenger-hunt)
- [Lightning route builder](https://github.com/chaincodelabs/lightning-route-builder)
