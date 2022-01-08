# Bridge

## Video
So, what is the Xeta Bridge? The Xeta Bridge enables users to swap Ether, BNB, or Xeta from Binance Smart Chain into native Xeta tokens and vice versa.

To create a bridge request, visit the Xeta network app and connect your wallets for the chains you want to exchange between. You will be able to specify your desired input amount, and you will see the approximate output amount. After you send the input transaction, it should take less than 5 minutes for the swap request to be completed, with a fee of around 2%.

## Intro
The Xeta bridge swaps between ETH/BNB/BSC XETA and native XETA tokens, with slippage of around 1.5% (plus regular liquidity slippage for amounts that impact liquidity). This process also works vice versa. The swap process takes about 5 minutes and is completely automated in both directions.

*Use Cases:  
Swapping supported assets from Ethereum (ETH) or Binance Smart Chain (BNB, XETA) to Xeta native tokens, Swapping native Xeta tokens into assets on Ethereum (ETH) or Binance Smart Chain (BNB, XETA)*

## Functionality
The user makes an input transfer to Xeta’s bridge wallet address on the chosen input chain. Xeta listens to all incoming transactions with a specifically formatted schema (the data/message field of transactions) and awaits a sufficient number of confirmations. After the transaction is confirmed, Xeta calculates the exchange rate based on swap size and its effect on liquidity to account for possible slippage. Slippage fees added on top of the base fee of 1.25%. Xeta then sends the output transfer on the chosen target chain to the wallet address connected by the user.

## Methods

### Create Bridge Request
Create a new bridge request.

**Requirements:** `ETH/BSC wallet`, `XETA wallet`  
**Outputs:** `Transfer on target chain`  
**Inputs:**  
`ETH/BSC public address`  
`XETA public address`  
`Swap amount`  
`Source-chain`  
`Target-chain`  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>