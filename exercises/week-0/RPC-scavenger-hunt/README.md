# RPC Scavenger Hunt

These exercises require a synced mainnet full node with the transaction index
active (`-txindex=1`). Chaincode Labs can provide credentials to a hosted node
with an authenticated [proxy](https://github.com/pinheadmz/rpc-auth-proxy)
so students can complete the exercises using `bitcoin-cli` locally but without
needing to sync a full node themselves.

Every question must be answered by providing a bash script that executes `bitcoin-cli`
commands. No other commands should be necessary besides bash operators and `jq`.

A good place to start is `bitcoin-cli help` and then `bitcoin-cli help <command name>`.

## Example:

*How many transactions are confirmed in block 666,666?*

Using local full node:

```sh
hash=$(bitcoin-cli getblockhash 666666)
block=$(bitcoin-cli getblock $hash)
echo $block | jq .nTx
```

Using proxy:

```sh
alias bcli="bitcoin-cli -rpcconnect=34.172.95.104 -rpcuser=zip -rpcpassword=burger"
hash=$(bcli getblockhash 666666)
block=$(bcli getblock $hash)
echo $block | jq .nTx
```

* Note that by saving a `bitcoin.conf` file with these RPC parameters, they
will not need to be added to every command to use the proxy.

Answer: `2728`