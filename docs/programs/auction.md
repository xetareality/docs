# Auction

## Intro
Auctions allow users to offer non-fungible tokens for sale. Participants can submit XETA-bids until the auction expires or the XETA limit is reached. Auction programs automatically handle the resolution by transferring the highest bid and NFT to their new or previous owners (depending on the auction status).

*Use Cases:  
Auctioning an NFT that a user owns in exchange for XETA*

## Functionality
The NFT owner creates an auction pool and sets a XETA target (minimum bid to consider the auction successful), a limit value (instant-buy bid), and a time of expiration. The NFT owner then deposits the NFT to the auction pool, and participants can place bids to the auction pool. When a participant places a bid higher than the previous bid, the pool automatically returns the earlier bid to the previous leader.

The auction outcome is determined when the auction expires or when the limit bid is reached before the expiration time. An auction is considered successful when the limit bid is reached before expiration, or when the target bid is reached at the time of expiration. Auction pools charge a commission of 2.5% for every concluded auction.

Upon success/failure of the auction, any Xeta user can call the resolve/cancel method of the auction pool, which then handles the asset transfers to the new or old owners. On auction failure (target bid not reached on expiry), the NFT is returned to the pool creator, and the highest bid is returned to the highest bidder. On auction success, the NFT is transferred to the highest bidder, and the highest bid is transferred to the auction-pool creator.

## Methods

### Transfer
Transfer a XETA bid to the auction pool.

**Requirements:** `Bid higher than previous bid`  
**Outputs:** `Bid transfer from sender to pool`, `Return transfer from pool to previous highest bidder`  
**Inputs:**  
`Amount` - Bid amount    

### Resolve
Resolve a successfully concluded auction pool.

**Requirements:** `Pool closed or expired and bid >= xetaTarget`, `Pool active and bid = xetaLimit`  
**Outputs:** `NFT transfer from pool to highest bidder`, `XETA transfer from pool to pool creator`  
**Inputs:** `None`  

### Cancel
Cancel an unsuccessful auction pool.

**Requirements:** `Pool closed or expired and bid < xetaTarget`  
**Outputs:** `NFT transfer from pool to pool creator`, `XETA transfer from pool to highest bidder`  
**Inputs:** `None`  

### Create
Create an auction pool for a particular NFT.

**Requirements:** `Pool creator`, `Pool token ownership`  
**Outputs:** `Auction pool`  
**Inputs:**  
`Token` - NFT address  
`XetaTarget` - Minimum bid for auction to be considered successful upon expiry  
`XetaLimit` - Maximum bid, equivalent to instant-buy bid  
`TransfersLimit` - Maximum limit of transfers  
`Expires` - Date and time of expiry  

### Deposit
Deposit an NFT to the auction pool.

**Requirements:** `Pool creator`, `Pool token ownership`  
**Outputs:** `NFT transfer from sender to pool`  
**Inputs:**  
`Unlocks` - Datetime when NFT claim can be unlocked and withdrawn

### Close
Closes an auction before expiry. Allows anyone to call cancel or resolve methods immediately.

**Requirements:** `Pool creator`  
**Outputs:** `None`  
**Inputs:** `None`  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>