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
    "ea4168ea51f65a77bd0ac2ddc7f0f837b01650dc4f11bc630541d6698ca50e32"]
]

for i, test in enumerate(tests):
    run_and_check(f"{i:03}.sh", *test)
