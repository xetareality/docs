# Sponsorship

## Intro
Xeta enables users to transfer a sponsored balance to addresses or pools, so other users interacting with these resources can do so without paying network fees.

*Use Cases:  
Recipient sponsoring incoming transfers to their address  
Pool sponsoring incoming transfers and enabling participation without owning XETA  
Project creators who would like to encourage participation in particular pools*

## Functionality
A user transfers sponsored XETA tokens to an address or pool. The transferred token is specified as sponsored XETA and is automatically swapped from the users' XETA balance into sponsored XETA and credited to the resource. Other users who interact with the sponsored resource won't be charged any fees until the sponsored balance of the resource is depleted.

## Methods

### Create
Swaps the users' owned XETA into sponsored XETA. Sponsored XETA cannot be withdrawn.

**Requirements:** `XETA balance`  
**Outputs:** `Sponsored XETA transfer from sender to recipient`  
**Inputs:**  
`To` - Recipient resource to be sponsored  
`Token` - Must be specified as 1111111111111111111111111sponsored  
`Amount` - Amount to sponsor  
`From` - From address in case of allowance  
`Message` - Custom transfer message  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>