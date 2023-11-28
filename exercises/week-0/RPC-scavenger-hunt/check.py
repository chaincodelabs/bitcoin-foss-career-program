import os
import subprocess
from pathlib import Path

SCRIPTS_DIR = Path(os.path.dirname(os.path.abspath(__file__))) / "scripts"

def run_and_check(script, question, expected):
    print(question)
    result = subprocess.check_output(["bash", f"{SCRIPTS_DIR / script}"], text=True).strip()
    print(result)
    assert result == expected

tests = [
    ["How many transactions are confirmed in block 666,666?",
    "2728"],
    ["How many new outputs were created by block 123,456?",
    "24"],
    ["Which tx in block 424356 spends the coinbase output of block 424243?",
    "ea4168ea51f65a77bd0ac2ddc7f0f837b01650dc4f11bc630541d6698ca50e32"],
    ["Only one single output remains unspent from block 123,321. What address is it sent to?",
    "1FPDNNmgwEnKuF7GQzSqUcVQdzSRhz4pgX"],
    ["Create a 1-of-4 P2SH multisig address from the public keys in the four inputs of tx 37d966a263350fe747f1c606b159987545844a493dd38d84b070027a895c4517",
    "3GyWg1CCD3RDpbwCbuk9TTRQptkRfczDz8"],
    ["Which public key signed input 0 in tx e5969add849689854ac7f28e45628b89f7454b83e9699e551ce14b6f90c86163?",
    "025d524ac7ec6501d018d322334f142c7c11aa24b9cffec03161eca35a1e32a71f"]
]

for i, test in enumerate(tests):
    run_and_check(f"{i:03}.sh", *test)
