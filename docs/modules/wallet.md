# Wallet

## Intro
Xeta’s wallet allows users to create and manage their XETA blockchain wallets, either by managing keys yourself or letting a 3rd party provider (currently Xeta foundation) manage keys for you.

*Use Cases:  
Create a new self-managed or managed Xeta wallet  
Connect an existing self-managed or managed Xeta wallet*

## Functionality
Users need a wallet to interact with the Xeta blockchain. Users can create a key pair (public key/private key) or let a provider manage this keypair for them (using a more memorable account and secret). Once a wallet is created through the self-managed or managed option, it can be connected to Xeta’s apps, as long as the owner has access to the private key or account and secret (in the case of managed keys).

## Methods

### Create Self-Managed
Create a new XETA blockchain key pair.

**Requirements:** `None`  
**Outputs:** `Public key`, `Private key`  
**Inputs:** `None`  

### Create Managed
Create a managed wallet.

**Requirements:** `None`  
**Outputs:** `Public key`  
**Inputs:**  
`Account` - Memorable account name, for example, email, phone number, or username  
`Secret` - Memorable password

### Connect Self-Managed
Connect a self-managed wallet.

**Requirements:** `Private key`  
**Outputs:** `None`  
**Inputs:** `None`  

### Connect Managed
Connect a managed wallet.

**Requirements:** `Account name`, `Account secret`  
**Outputs:** `None`  
**Inputs:** `None`  

<div style="page-break-after: always; visibility: hidden">\pagebreak</div>