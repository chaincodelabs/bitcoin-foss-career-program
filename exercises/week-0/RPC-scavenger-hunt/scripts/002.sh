hash0=$(bitcoin-cli getblockhash 424243)
cbid=$(bitcoin-cli getblock $hash0 | jq -r .tx[0])
hash=$(bitcoin-cli getblockhash 424356)
txids=$(bitcoin-cli getblock $hash | jq -r '.tx[]')
for txid in $txids; do
  vins=$(bitcoin-cli getrawtransaction $txid 1 | jq -r '.vin[] | .txid')
  for vin in $vins; do
    if [[ $vin = $cbid ]]; then
      echo $txid
      exit 0
    fi
  done
done
