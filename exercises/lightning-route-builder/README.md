# Lightning Payment Route Builder

Payments in the lightning network use a series of HTLCs (hash time locked contracts) to 
send bitcoin across the network of payment channels - from a sending node to a receiving 
node. At each hop along the route, the HTLC that is added to the payment channel 
specifies the amount that is being paid (if a valid preimage is presented) and the 
absolute blockchain height at which the HTLC will expire. For a given route, these values
are selected by applying the routing policies that each hop advertises which outline the 
fee that they charge for forwarding and the expiry delta (between incoming and outgoing 
HTLCs) that they require.

For this exercise, you will be required to calculate the HTLC amount and expiry for a 
given lightning network route. Note that: 
- This exercise does not require access to a bitcoin or lightning node to complete. 
- This is *not* a pathfinding exercise, the input provided is the selected path.
- Routes are build *backwards* in lightning, starting with the payment amount and current 
  height at the destination and applying fee and expiry policies in *reverse*.

## Task 

Write a program that:
- Accepts three arguments: 
  - 0: an absolute path to a file containing a set of hops in a lightning network route.
  - 1: a millisatoshi payment amount, expressed as an uint64.
  - 2: the current block height, expressed as a uint32.
- Uses the routing policies of the hops provided to produce the values for the HTLCs that
  will be used to make a payment for the amount and block height provided.
- Outputs the HTLC values for each hop to `stdout`.

### Input Format

The input file for your program will specify the hops for payment route that you will 
need to build, separated by newlines. The first node is the sending node, and the last
node is the recipient.

```
string: Channel_Name
uint32: CLTV_Delta
uint64: Base_Fee_Msat
uint64: Proportional_Fee_PPM

string: Channel_Name
uint32: CLTV_Delta
uint64: Base_Fee_Msat
uint64: Proportional_Fee_PPM
...
```

### Output Format
Your program will be expected to output each hop of the constructed route to `stdout` 
with the following format:

```
string: Channel_Name
uint64: HTLC_Amount_Msat
uint32: HTLC_Expiry

string: Channel_Name
uint64: HTLC_Amount_Msat
uint32: HTLC_Expiry
...
```

## Helpful Resources
TODO

## Example
Input File `hops.txt`- Payment from Alice via Bob and Carol to Dave (`A -- B -- C -- D`):
```
AliceBob
40
1000
10

BobCarol
55
0
5000

CarolDave
22
3000
0
```

Args - Pay 5000000 msat at block height 1000: 
`"/Users/example/hops.txt" 5000000 1000`

`stdout` Output:
```
AliceBob
505515
1062

BobCarol
503000
1022

CarolDave
500000
1000
```
