## Intro
Lottery pools allow the distribution of fungible or non-fungible tokens in a randomized way. Lotteries can be based on specific criteria, such as a minimum token amount that someone must hold to participate or require a minimum amount to enter. After a lottery expires, it can be resolved to automatically distribute the NFT or make the fungible tokens claimable for winning participants.

*Use Cases:  
Distributing an NFT through a randomized mechanism and a single winner  
Distributing fungible-tokens through a randomized mechanism*

## Functionality
A lottery pool can promote a fungible or single non-fungible token to participants, who can enter to win with a probability dependent on the number of entries. After creating the lottery pool, the creator must deposit the fungible tokens or a single NFT. Once the deposit is complete, any user can participate, either for free or the minimum amount required by the pool. Furthermore, pools can set a minimum amount of tokens or XETA that a user needs to hold to be eligible to participate. Requiring a minimum amount of tokens or XETA to participate improves incentives for users to remain honest while being real supporters of a project.

After the lottery pool expires, the resolution call automatically transfers the NFT to a single winner chosen from all participants. If the lottery is promoting a fungible token, winners (based on the pools’ probability) can claim their fungible-token rewards using their claimable ticket.

## Methods

### Transfer
Transfer the entry amount to participate in the lottery.

**Requirements:** `Token balance`, `XETA balance`  
**Outputs:** `XETA transfer from sender to pool`, `Transfer claim from pool to sender`  
**Inputs:**  
`Token` - Pool token  

### Claim
Claim a lottery ticket, and receive the pool token with a certain probability.

**Requirements:** `Active transfer claim`  
**Outputs:** `NFT or token with a probability as specified by the pool`  
**Inputs:**  
`Claim` - Claim hash  

### Resolve
Resolve a lottery pool and determine the winner of an NFT lottery.

**Requirements:** `NFT lottery`  
**Outputs:** `NFT transfer from pool to random participant`  
**Inputs:** `None`  

### Create
Create a lottery pool for fungible tokens or a single non-fungible token.

**Requirements:** `None`  
**Outputs:** `Lottery pool`  
**Inputs:**  
`Token` - The token which is to be promoted  
`MinAmount` - Participation amount  
`TokenTarget` - Amount of pool tokens that someone must hold to participate  
`XetaTarget` - Amount of XETA, that someone must hold to participate  
`TransfersLimit` - Maximum amount of participants  
`ClaimsLimit` - Maximum number of winners  
`Expires` - Datetime when lottery naturally expires   

### Deposit
Allows the creator to deposit the pool token.

**Requirements:** `Pool creator`  
**Outputs:** `Token transfer from sender to pool`, `Deposit claim from pool to sender`  
**Inputs:**  
`Amount` - Amount in case of a fungible-token lottery  
`Unlocks` - Datetime when the claim unlocks  

### Withdraw
Allows the creator to withdraw a previously deposited pool token.

**Requirements:** `Pool creator`, `Active deposit claim`  
**Outputs:** `Token transfer from pool to sender`  
**Inputs:**  
`Claim` - Deposit claim hash  

### Close
The creator can close the lottery before expiration. If there are participants, the creator can only withdraw the unclaimable share.

**Requirements:** `Pool creator`  
**Outputs:** `None`  
**Inputs:** `None`  

### Clear
Allows the creator to clear XETA earnings collected by the lottery pool if the participation amount is positive.

**Requirements:** `Pool creator`, `XETA balance by pool`  
**Outputs:** `XETA transfer from pool to pool creator`  
**Inputs:** `None`  