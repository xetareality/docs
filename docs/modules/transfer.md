# Transfer

## Intro
A transfer allows the transfer of fungible and non-fungible tokens between addresses.

*Use Cases:  
Transferring an amount of a fungible token  
Transferring a non-fungible token*

## Functionality
A user with a certain fungible-token balance can transfer all or parts of the balance to another address. Additionally, a user who owns a particular non-fungible token can create a transfer to assign ownership to another address.

## Methods

### Create
Create a new fungible or non-fungible token transfer.

**Requirements:** `Token balance/ownership`  
**Outputs:** `Token transfer from sender to recipient`  
**Inputs:**  
`To` - To address for the transfer  
`Token` - Token to be transferred  
`Amount` - Transfer amount for FT, empty if NFT  
`From` - From address in case of allowance  
`Message` - Custom transfer message  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>