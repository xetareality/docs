# Allowance

## Intro
An allowance can be given to another address, which is then allowed to spend a particular fungible token amount on behalf of the creator.

*Use Case: Allowing someone to spend funds on your behalf*

## Functionality
A user sets an allowance, granting another spender the right to spend a particular fungible token for a certain amount. The spender then can create transfers by specifying the from address to be the address that granted the allowance. The allowance creator can increase and decrease their given allowances at any time. The spender can make transfers until the creator’s allowance is depleted or adjusted to zero.

## Methods

### Update Allowance
Allows a spender to spend your tokens for the specified amount.

**Requirements:** `Token balance`  
**Outputs:** `Allowance to spend`  
**Inputs:**  
`Spender` - Public address of the spender  
`Token` - Fungible-token address  
`Amount` - Allowance amount  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>