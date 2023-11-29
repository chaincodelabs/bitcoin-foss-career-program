# Start Your Career in Bitcoin FOSS


## Acceptance into program

Technical challenges:

[Block Builder](https://github.com/chaincodelabs/code-challenge)

[TX Signer](https://github.com/chaincodelabs/code-challenge)

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

Provided Infastructure:
Access mainnet RPC through [proxy](https://github.com/pinheadmz/rpc-auth-proxy)
currently running at `34.172.95.104`

Exercises:
- [Bitcoin Core RPC Scavenger Hunt](exercises/week-0/RPC-scavenger-hunt)
- [Bitcoin Core Test the Test](exercises/week-0/Bitcoin-Core-test-the-test)


### Week 1: Cryptography

Read:
- Ch. 4 Keys and Addresses
- Ch. 5 Wallet Recovery
- Ch. 8 Digital Signatures

Exercises:
TODO:


### Week 2: Transactions

Read:
- Ch. 6 Transactions
- Ch. 7 Authorization and Authentication

Extra tutorial:
[Transaction exercises](https://github.com/chaincodelabs/bitcoin-tx-tutorial)

Exercises:
- [ ] Script challenges (here is a script, spend it)
- [ ] Group Project: create and spend from a multisig on a sandboxed signet


### Week 3

Read:
- Ch. 9 Transaction Fees
- Ch. 10. The Bitcoin Network
- Ch. 11 The Blockchain
- Ch. 12 Mining and Consensus

Exercises (pick 1 of 4):
- [ ] Fee estimation
- [ ] 51% attacks: - mine a block and reorg the chain with a double spend
- [ ] mini p2p node: write a script that connects to bitcoin mainnet, version ack etc


### Week 4

Read:
- Ch. 14 Second-Layer Applications

Exercises:
- [ ] Invoices, spontaneous payments oriented, see https://buildonln.com/
