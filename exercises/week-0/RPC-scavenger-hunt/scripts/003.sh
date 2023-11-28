hash=$(bitcoin-cli getblockhash 123321)
outs=$(bitcoin-cli getblock $hash 2 | jq -c '.tx[] | {txid: .txid, vout: (.vout | length)}')
for out in $outs; do
  txid=$(echo $out | jq -r .txid)
  vout=$(echo $out | jq -r .vout)
  for (( i=0; i<vout; i++ )); do
    txout=$(bitcoin-cli gettxout $txid $i)
    if [[ -n $txout ]]; then
      echo $txout | jq -r .scriptPubKey.address
      exit 0
    fi
  done
done
