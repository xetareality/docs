# Address

## Intro
An address represents an account on Xeta and is either a token, pool or private wallet. Every public key is automatically an address that can receive funds, and users can customize their address profiles with name, description, links, image previews, and other info.

*Use Cases:  
Token and pool addresses  
Personal wallet address (equivalent to a public key)  
Custom profiles (such as an address representing an NFT collection)*

## Functionality
When a user creates a managed or self-managed wallet, a public key is automatically generated, serving as a public wallet address. This address is public and can receive permissionless transfers from anyone. A user can update their connected wallet address to represent a profile or a collection.

## Methods

### Update Address
Update an address by adding custom info such as name, preview image, etc.

**Requirements:** `Xeta wallet`  
**Outputs:** `NFT representing profile data`  
**Inputs:**  
`Name` - a name for the address  
`Description` - a description for the address  
`Links` - profile links  
`Meta` - profile data as a JSON object  
`Preview` - preview image for the address  
`Category` - category of the address  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>