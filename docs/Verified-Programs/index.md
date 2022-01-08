# Xeta Program Overview

Xeta focuses on gaming and metaverse applications that commonly require features such as auctions, voting, swapping. With Xeta, we provide 10 in-built programs, which can be specified as program when creating a new pool:

### [Auction](auction.md)
Auctions allow anyone to offer fungible or non-fungible tokens for sale. Bids are handled by the program, and auctions are considered successful when the auction pool has no target, the target is met, or the limit is met (equivalent to an instant purchase at maximum price).

### [Launch](launch.md)
Fundraising pools allow creators to raise XETA until a specific target or limit is met. Successful funds distribute portions of the raised amount to the creator and the remainder to the assets' swap pool as liquidity. If a pool rate is set, the fund automatically swaps XETA to asset tokens at that specified rate directly, without the condition of having to meet a fundraising goal.

### [Lending](lending.md)
Lending pools allow users to borrow tokens against XETA collateral. Lending pools allow “short selling” a token or resolving claims without owning the token. At the same time, it enables lenders to earn interest by making their tokens available for borrowers.

### [Lock](lock.md)
Locking pools allow asset owners to lock funds for various use-cases, such as delayed payouts and vesting.

### [Loot](loot.md)
Loot pools allow NFT creators and games to distribute (drop) new NFTs, items, skins from a collection in a randomized and engaging way. Users can enter for free or for a fee as specified by the pool creator. Entrants receive tickets that have a certain probability of winning a random item from the loot pool.

### [Lottery](lottery.md)
Promo pools provide an airdrop/lottery mechanism, which can engage users or distribute tokens in a simple and fair way. Users can participate for free or for a fee (specified upon pool creation) and receive tickets with a certain probability to win from the prize pool.

### [Royalty](royalty.md)
Royalty pools are set up by an asset creator who wishes to reward all or parts of his assets based on a specified daily rate. Currently, this finds application in providing NFTs with yield for holding (royalties).

### [Staking](staking.md)
Staking pools allow token creators to reward holders of fungible tokens, depending on lock-up length and amount. For example, a pool creator might specify a certain APY and bonus rate for his pool, deposit reward tokens, and allow users to lock up tokens into the pool who will receive rewards once their lock-up period expires.

### [Swap](swap.md)
Swapping pools are pools holding XETA and the pool asset, which can be exchanged one for another. Swap pools are the same functionality that makes popular DEXs like Uniswap or PancakeSwap possible.

### [Vote](vote.md)
Voting pools allow users to submit votes given a list of assets/addresses or numbers (prediction markets). Voting can be used for governance (voting for new proposals), for predictions with payouts to the winning voters, or to engage users (a mechanism to vote on any tokenized objects and get paid if the vote was correct after pool expiry).