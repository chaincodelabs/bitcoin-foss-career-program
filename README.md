# Start Your Career in Bitcoin FOSS


## Acceptance into program

Technical challenges:

[Block Builder](https://github.com/chaincodelabs/code-challenge/tree/master/block_constructor)

[TX Signer](https://github.com/chaincodelabs/code-challenge/tree/master/sign_transactions)

TODO:
- [ ] Coin selection
- [ ] Package RBF - package linearization, need to come up with a good sort
- [ ] Fee estimation


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
- [Bitcoin Core RPC Scavenger Hunt](exercises/RPC-scavenger-hunt)
- [Bitcoin Core Test the Test](https://github.com/chaincodelabs/bitcoin-core-test-the-test)


### Week 1: Cryptography

Read:
- Ch. 4 Keys and Addresses
- Ch. 5 Wallet Recovery
- Ch. 8 Digital Signatures

Provided Infrastructure:
We will host a custom signet miner node with a pre-generated blockchain
full of UTXOs for wallet recovery and script challenges.

Exercises:
- [ ] Create a wallet part 1: keys, addresses, and signatures


### Week 2: Transactions

Read:
- Ch. 6 Transactions
- Ch. 7 Authorization and Authentication

Extra tutorial:
[Transaction exercises](https://github.com/chaincodelabs/bitcoin-tx-tutorial)

Exercises:
- [ ] Create a wallet part 2: scripts, multisig, and transactions


### Week 3

Read:
- Ch. 9 Transaction Fees
- Ch. 10. The Bitcoin Network
- Ch. 11 The Blockchain
- Ch. 12 Mining and Consensus

Exercises (pick 1 of 4):
- [ ] Fee estimation
- [ ] 51% attacks: - mine a block and reorg the chain with a double spend
- [ ] [Tiny Python Bitcoin peer](https://github.com/willcl-ark/tinybitcoinpeer)
- [ ] [Larry's mining simulator](https://github.com/LarryRuane/minesim)

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
- [ ] Invoices, spontaneous payments oriented, see https://buildonln.com/
