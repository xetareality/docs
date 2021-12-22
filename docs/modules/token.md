## Intro
Tokens are fungible (divisible) or non-fungible assets. Fungible tokens are similar to shares and represent fractional ownership of something. Non-fungible tokens represent objects via object URL (IPFS, S3, etc) or content hash (e.g. MD5 of bytes content).

*Use Cases:  
Fungible tokens (representing fractional ownership of something)  
Non-fungible tokens (representing objects via URL or content hash in physical and virtual worlds)*

## Functionality
A user can mint fungible or non-fungible tokens. Fungible tokens represent fractional shares and have a symbol, supply, and optionally a reserve, which can be used to mint additional tokens at a later point in time. Non-fungible tokens represent objects in physical and virtual spaces by referencing an object URL (e.g. IPFS link) or a content hash. When fungible tokens are minted, a decentralized swap pool is created automatically, enabling the decentralized exchange of tokens.

## Methods

### Create
Create a fungible or non-fungible token.

**Requirements:** `None`  
**Outputs:** `Funigble or non-fungible token`  
**Inputs:**  
`Name` - Name of the token  
`Description` - Description of the token  
`Links` - Links for the token  
`Meta` - Custom metadata as a JSON object  
`Preview` - Preview image for the token, e.g. icon for FT, image for NFT  
`Symbol` - Symbol for FT  
`Supply` - Supply for FT  
`Reserve` - Reserve for FT, mintable at a later point in time  
`Owner` - Owner for NFT  
`Object` - Object representing NFT  
`Content` - Content representing NFT  
`Mime` - Mime of NFT object  
`Frozen` - Disables transfer of NFT, if true  
`Category` - NFT category  

### Update
Allows the creator to update a fungible or non-fungible token.

**Requirements:** `Token creator`  
**Outputs:** `None`  
**Inputs:**  
`Token` - Token address  
`Name` - Update name  
`Description` - Updated description  
`Links` - Updated links  
`Meta` - Updated meta  
`Preview` - Updated image preview  
`Mime` - Updated object mime  
`Frozen` - Frozen NFT status  
`Category` - Updated NFT category  

### Mint
Allows the creator of a fungible token to mint additional tokens from its unallocated reserve.

**Requirements:** `Token creator`  
**Outputs:** `Token transfer from factory to creator`  
**Inputs:**  
`Token` - Token address  
`Amount` - Amount to be minted  
