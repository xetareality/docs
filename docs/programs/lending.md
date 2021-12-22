## Intro
Lending pools allow users to borrow tokens against XETA collateral. Lending pools allow “short selling” a token or resolving claims without owning the token. At the same time, it enables lenders to earn interest by making their tokens available for borrowers.

*Use Cases:  
Short-selling a borrowed token based on the assumption that tokens can be purchased back at a lower price (contributing to more efficient markets)  
Earning interest by lending out fungible tokens to borrowers*

## Functionality
A lending pool is created with a certain collateralization and interest rate. Lenders deposit tokens into the lending pool. Borrowers can then use it to borrow tokens while specifying the desired collateral. As long as the collateralization is kept above the minimum, users can keep tokens for as long as they wish and pay the respective interest rate upon settlement. If, however, the collateralization rate falls below the minimum, any user can liquidate the borrower's claim, which applies penalties equivalent to a one-year interest rate to the borrower's collateral.

All collected funds, via interest rate paid by the borrower, including liquidations, are collected and proportionally divided between lenders based on lending duration and lending amount. Lending pools make it possible for lenders to earn a steady and predictable interest rate.

## Methods

### Transfer
Lend tokens from the lending pool at certain collateralization.

**Requirements:** `Collateralization >= Min. collateralization`  
**Outputs:** `XETA transfer from sender to pool`, `Token transfer from pool to sender`  
**Inputs:**  
`Collateralization` - Desired collateralization rate  
`Amount` - XETA amount to be transferred as collateral  

### Settle
Return previously lent tokens while paying an interest rate based on the rate specified by the pool and the lending duration.

**Requirements:** `None`  
**Outputs:** `Token transfer from sender to pool`, `XETA transfer from pool to sender`  
**Inputs:**  
`Claim` - Claim hash  

### Liquidate
Liquidate someone’s claim that has dropped below the minimum collateralization required by the pool.

**Requirements:** `Claim collateralization < Min. collateralization`  
**Outputs:** `XETA transfer from pool to borrower for remaining collateral`, `XETA transfer from pool to liquidator for finders reward`  
**Inputs:**  
`Claim` - Claim hash  

### Deposit
Deposit tokens as specified by the pool to earn a specific interest rate.

**Requirements:** `None`  
**Outputs:** `Token transfer from sender to pool`, `Deposit claim from pool to sender`  
**Inputs:**  
`Amount` - The deposited amount  
`Unlocks` - A datetime when the deposit claim can be redeemed  

### Withdraw
Withdraw tokens that have been deposited previously to the lending pool.

**Requirements:** `Active deposit claim`  
**Outputs:** `Token transfer from pool to sender`, `XETA transfer from pool to sender for interest earned`  
**Inputs:**  
`Claim` - Deposit claim hash  

### Create
Create a lending pool for a fungible token.

**Requirements:** `None`  
**Outputs:** `Lending pool`  
**Inputs:**  
`Token` - Token to lend/borrow  
`Percentage` - Collateralization rate  
`Rate` - Annual interest rate  