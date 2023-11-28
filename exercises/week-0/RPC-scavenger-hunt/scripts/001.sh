# easy alternative:
# echo bitcoin-cli getblockstats 123456 | jq -r .outs

hash=$(bitcoin-cli getblockhash 123456)
txids=$(bitcoin-cli getblock $hash | jq -r '.tx[]')
outputs=0
for txid in $txids; do
  vout=$(bitcoin-cli getrawtransaction $txid 1 | jq .'vout | length')
  (( outputs += vout ))
done
echo $outputs