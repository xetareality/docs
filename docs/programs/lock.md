## Intro
Lock pools make it possible for anyone with a fungible-token balance to lock tokens for a specific time. Locks can be set to unlock after a particular date or be valid only before a date through an expiration mechanism. Furthermore, lock pools allow the transfer of lock claim ownership to other addresses.

*Use Cases:  
Locking fungible-tokens for someone (e.g. allocated for another entity as a form of vesting)  
Locking fungible-tokens until a specific datetime  
Locking fungible-tokens claimable after a particular date, and before an expiry date*

## Functionality
A lock pool is created for a particular token. Users can then use this pool to lock their tokens in exchange for a lock claim. This claim can then be redeemed after the locking period expires. Lock claims can be assigned to another address, allowing project creators to distribute tokens to others in a locked state.

## Methods

### Transfer
Create a new lock-claim for the token as specified by the pool.

**Requirements:** `Token balance`  
**Outputs:** `Token transfer from sender to pool`, `Lock claim from pool to sender`  
**Inputs:**  
`Amount` - Fungible-token amount to be locked  
`Address` - Address for which to lock the tokens  
`Unlocks` - Datetime from which the claim will be claimable  
`Expires` - Datetime at which the claim will expire and become non-claimable  

### Claim
Allows participants with a valid lock-claim to unlock tokens from the lock-pool.

**Requirements:** `Active lock claim`  
**Outputs:** `Token transfer from pool to sender`  
**Inputs:**  
`Claim` - Lock claim hash  
