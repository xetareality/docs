# Launch

## Intro
Launch pools allow creators to raise funds for a project by offering fungible tokens representing the project in exchange for XETA. Launch pools have a fixed rate of raising funds and a target (minimum) and limit (maximum) XETA amount. A successful launch pool (target amount reached before closure/expiry) automatically handles the liquidity deposit to the fungible token swap pool. Anyone who participated in the launch pool can then claim fungible tokens or recover their initial contribution if the launch didn’t raise the target amount.

*Use Case: Raise funds for a project and automatically distribute raised funds to liquidity and/or creators.*

## Functionality
A fungible-token owner creates a launch pool for a fungible token and shares it with users who can participate by contributing XETA tokens. Pool creators can decide how many tokens they want to offer and how much they want to raise as a minimum and maximum amount. Once a launch expires or closes, participants can claim back either tokens (upon success) or their XETA contribution (upon failure). Since the pool automatically handles the liquidity deposit, successfully resolved launches are automatically tradeable at the token swap pool.

## Methods

### Transfer
Transfer XETA to the launch pool to participate.

**Requirements:** `Active pool`  
**Outputs:** `XETA transfer from sender to pool`, `Transfer claim from pool to sender`  
**Inputs:**  
`Amount` - XETA contribution amount  

### Claim
Claim tokens upon success or XETA contribution upon failure.

**Requirements:** `Concluded pool`, `Transfer claim`  
**Outputs:** `Token transfer from pool to sender on pool success`, `XETA transfer from pool to sender on pool failure`  
**Inputs:**  
`Claim` - Claim hash    

### Resolve
Resolve launch pool after expiry or if creator manually closed pool.

**Requirements:** `Pool XetaBalance >= XetaTarget`  
**Outputs:** `Liquidity transfer from launch pool to swap pool`, `Funds transfer from launch pool to pool creator`  
**Inputs:**  
`Token` - Pool token  

### Create
Create a launch pool for a fungible token.

**Requirements:** `Token balance`  
**Outputs:** `Launch pool`  
**Inputs:**  
`Token` - Token to launch  
`XetaTarget` - Minimum XETA target  
`XetaLimit` - Maximum XETA limit  
`Percentage` - Percentage for liquidity vs. creator  
`TransfersLimit` - Maximum number of participants  
`Expires` - Datetime of expiry  

### Deposit
Deposit the fungible tokens and automatically determine the swap rate, based on 50% of the deposited amount allocated for swaps, 50% allocated for liquidity.

**Requirements:** `Pool creator`  
**Outputs:** `Token transfer from sender to pool`, `Deposit claim from pool to sender`    
**Inputs:**  
`Amount` - Amount to be deposited  
`Unlocks` - Unlocks datetime for claim  

### Withdraw
Withdraw previously deposited tokens, or remainder for a closed launch.

**Requirements:** `Pool creator`, `Token balance in the pool`  
**Outputs:** `Token transfer from pool to sender`  
**Inputs:**  
`Claim` - Claim hash  

### Close
Creators can close the launch pool manually before expiry.

**Requirements:** `Pool creator`  
**Outputs:** `None`  
**Inputs:** `None`  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>