tx=$(bitcoin-cli getrawtransaction 37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517 1)
keys=$(echo $tx | jq -r -c '[.vin[] | .txinwitness[1]]')
bitcoin-cli createmultisig 1 $keys | jq -r .address