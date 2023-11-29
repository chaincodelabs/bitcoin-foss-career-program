witness=$(bitcoin-cli getrawtransaction e5969add849689854ac7f28e45628b89f7454b83e9699e551ce14b6f90c86163 1 | jq -c -r .vin[0].txinwitness)
script=$(echo $witness | jq -r .[2])
asm=$(bitcoin-cli decodescript $script | jq -r .asm)
# return the first public key in the script because "01" is passed as input
for word in $asm; do
  if [[ ${#word} = 66 ]]; then
    echo $word
    exit 0
  fi
done

