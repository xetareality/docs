# Staking

## Intro
Staking pools allow creators to reward holders for locking (staking) their tokens for a definite period. After the period passes, the participant can unlock their staked tokens and receive an additional reward from the deposited rewards, based on the specified yearly interest rate and yearly interest bonus.

*Use Case: Rewarding holders of a fungible token with a certain APY and bonus rate for committing their holding by locking tokens*

## Functionality
A creator creates a staking pool with a specific yearly APY rate and an optional bonus percentage. Optionally, a minimum/maximum amount and locking time may be set. After the pool is created, the creator deposits tokens as reward payouts. Any holder of the pool token can lock and commit their tokens for a reward payout based on staking time and APY, and bonus rate. Once the staking period passes, the participant can unlock their tokens and receive their initial stake, including the interest rate as defined by the pool.

## Methods

### Transfer
Stake tokens by locking them for a specific time.

**Requirements:** `Min/max amount valid`, `Min/max time valid`  
**Outputs:** `Token transfer from sender to pool`, `Staking claim from pool to sender`  
**Inputs:**  
`Amount` - Staking amount  
`Unlocks` - Datetime until the amount will be locked  

### Claim
Claim back the initial stake, including rewards accumulated during the staking period.

**Requirements:** `Active staking claim`  
**Outputs:** `Token transfer from pool to sender (with rewards)`  
**Inputs:**  
`Claim` - Claim hash  

### Withdraw
Withdraws reward tokens as creator or deposited tokens as a participant (but without rewards).

**Requirements:** `Active staking claim`  
**Outputs:** `Token transfer from pool to sender (without rewards)`  
**Inputs:**  
`Claim` - Deposit claim hash  
`Percentage` - Percentage to withdraw (defaults to 1 equivalent to 100%)

### Create
Create a staking pool with a specific APY rate and bonus percentage.

**Requirements:** `None`  
**Outputs:** `Staking pool`  
**Inputs:**  
`Token` - Pool token to be staked and paid as rewards  
`Rate` - The yearly APY rate  
`Percentage` - A bonus percentage, paid additional to the annual APY rate for one year of holding  
`MinAmount` - Minimum staking amount  
`MaxAmount` - Maximum staking amount  
`MinTime` - Minimum staking time in seconds  
`MaxTime` - Maximum staking time in seconds  
`TransfersLimit` - Maximum number of transfers to the staking pool  
`Expires` - Datetime when the staking pool expires and is not accepting new participants  

### Deposit
Deposit reward tokens to the staking pool.

**Requirements:** `Pool creator`  
**Outputs:** `Token transfer from sender to pool`  
**Inputs:**  
`Amount` - Amount to be deposited as rewards  
`Unlocks` - Lock time of the reward token claim  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>