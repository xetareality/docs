## Intro
Royalty pools allow NFT creators to allocate a particular token for royalty payouts of NFT holders. Anyone who owns an NFT specified by a royalty pool can claim royalties based on the holding duration.

*Use Cases:  
Reward NFT holders based on the length of holding a certain NFT
Pay a passive income/royalties for anything in the physical or virtual reality, represented by an NFT*

## Functionality
A creator creates a royalty pool and specifies candidates and a linear pay-out rate of rewards. After depositing rewards, any owner of NFTs created by the creator (and as determined by the royalty pool) can then periodically claim royalties from the pool. Royalties accumulate every day until a claim is made (claims reset the daily counter).

## Methods

### Claim
Claim royalties for an NFT created by the royalty-pool creator, depending on the length of holding the NFT.

**Requirements:** `Claim answer in pool candidates, or no candidates`  
**Outputs:** `Royalty transfer from pool to sender`  
**Inputs:**  
`Token` - Token address  

### Create
Create a royalty pool while specifying the eligible NFT candidates and a daily royalty rate.

**Requirements:** `None`  
**Outputs:** `Royalty pool`  
**Inputs:**  
`Token` - A fungible token that is used as reward payout  
`Candidates` - A list of NFT candidates, or empty if all NFTs by the creator should be eligible  
`Rate` - Amount of pool-tokens that is paid for every day of holding the NFT  
`Expires` - Datetime when the royalty pool is no longer valid  

### Deposit
Deposit a certain amount of pool-tokens available as reward payouts for NFT holders.

**Requirements:** `Pool creator`  
**Outputs:** `Reward token transfer from sender to pool`, `Deposit claim from pool to sender`  
**Inputs:**  
`Amount` - Reward amount to be deposited  

### Withdraw
Withdraw previously deposited reward tokens (partially if rewards have been claimed already).

**Requirements:** `Pool creator`, `Active deposit claim`, `Token balance by pool`  
**Outputs:** `Token transfer from pool to sender`  
**Inputs:**  
`Claim` - Deposit claim hash  

### Close
The creator can close a royalty pool at any time, making it impossible to claim additional royalties.

**Requirements:** `Pool creator`  
**Outputs:** `None`  
**Inputs:** `None`  
