## Intro
Claims represent a promise or contract that is made between two parties. A claim creator issues a claim to someone representing an option that can be redeemed based on specified terms such as timeframe or amount. The claim owner can redeem the claim once the condition of the claim is met. The fulfillment of promises made by claims is not guaranteed and is dependent on the issuers’ integrity and trust. However, if a pool with a verifiable program issues the claim, the claim resolution can be guaranteed through code.

*Use Cases:  
Claims between two users (credit claims, ownership claims, contracts, promises)  
Claims between a pool and a user (liquidity claim, deposit claim, vote claim, lottery ticket claim, etc.)*

## Functionality
A claim creator creates a claim based on a specific agreement and issues it to a user who has the right to claim once the conditions are met. Most frequently, pools use claims as a ticket to the user, who can redeem the ticket. Created claims can be updated by the creator at any time until resolution. Claim creators can also mark claims as resolved, at which point the claim becomes settled and cannot be updated any longer. Owned claims can be transferred as long as they are not frozen.

## Methods

### Create
Enables a pool or user to issue a claim to someone.

**Requirements:** `Claim token balance/ownership`  
**Outputs:** `Claim assigned to specified owner`  
**Inputs:**  
`Owner` - Holder who receives the claim  
`Token` - Claimable token  
`TokenAmount` - Claimable token amount  
`XetaAmount` - Claimable Xeta amount  
`Expires` - Expiry date for the claim  
`Unlocks` - Date at which the claim becomes claimable  
`Frozen` - Forbids claim transfers, if set to true  
`Category` - Claim category  
`Meta` - Custom metadata as a JSON object  
`Answer` - Claimed answer  
`Number` - Claimed number  

### Transfer
Enables the claim owner to transfer claim ownership.

**Requirements:** `Unfrozen claim`  
**Outputs:** `None`  
**Inputs:**  
`Claim` - Claim hash  
`To` - To address  

### Update
Enables the claim creator to update specific claim values.

**Requirements:** `Claim creator`  
**Outputs:** `None`  
**Inputs:**  
`Claim` - Claim hash  
`TokenAmount` - Claimable token amount  
`XetaAmount` - Claimable Xeta amount  
`Expires` - Expiry date for the claim  
`Unlocks` - Date at which the claim becomes claimable  
`Frozen` - Forbids claim transfers, if set to true  
`Category` - Claim category  
`Meta` - Custom metadata as a JSON object  
`Answer` - Claimed answer  
`Number` - Claimed number  

### Resolve
Enables the claim creator to close a claim and tag it as resolved.

**Requirements:** `Claim creator`  
**Outputs:** `None`  
**Inputs:**  
`Claim` - Claim hash  
