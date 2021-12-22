## Intro
Pools are autonomous accounts that execute a set of programmed instructions. Pools are generic wrappers for assets to enable decentralized functionalities such as auctions, launches, lending, locks, loots, lotteries, royalties, staking, swaps, and votes. Pools can hold tokens, make transfers, and create claims based on their underlying and specified program chosen at pool creation.

*Use Cases: Reusable autonomous wrappers which execute programmable instructions (equivalent to smart contracts), enabling DeFi functionalities like auctions, launches, lending, locks, loots, lotteries, royalties, staking, swaps, and votes*

## Functionality
A user creates a pool for a particular token while specifying the desired pool program. This program can be specified as auction (creating an NFT auction), launch (launch-pads for new tokens), lending (allowing others to borrow tokens against XETA collateral), locks (locking/vesting tokens), loot (randomized token drops), lottery (token lotteries), royalty (rewards for NFTs), swap (decentralized exchange), vote (voting/betting mechanisms) or any custom program as written in Xeta’s Turing-incomplete programming language.

During pool creation, the user might configure the pool using predefined parameters and modify how program instructions are executed (for example, by specifying a minAmount, the pool might only accept transfers with a certain amount).

## Methods

### Create
Create a new pool that executes instructions based on the specified program for a specified token.

**Requirements:** `Token balance/ownership`  
**Outputs:** `Pool for the specified token`  
**Inputs:**  
`Token` - Token for the pool  
`Program` - Pool program id  
`Name` - Name of the pool  
`Description` - Description of the pool  
`Mechanism` - Mechanism, as required by specific programs  
`Candidates` - List of candidates  
`Rate` - Rate between 0-1  
`Percentage` - Percentage, between 0-1  
`Number` - Custom number as required by specific programs  
`Answers` - List of answers  
`Meta` - Custom metadata as a JSON object  
`Expires` - Datetime of expiry  
`MinAmount` - Min. amount for transfers to the pool  
`MaxAmount` - Max. amount for transfers to the pool  
`MinTime` - Min. time of claims created by the pool  
`MaxTime` - Max. time of claims created by the pool  
`TransfersLimit` - Max. number of transfers to the pool  
`ClaimsLimit` - Max. number of claims by the pool  
`TokenTarget` - Token target balance of the pool  
`XetaTarget` - Xeta target balance of the pool  
`TokenLimit` - Token limit balance of the pool  
`XetaLimit` - Xeta limit balance of the pool  