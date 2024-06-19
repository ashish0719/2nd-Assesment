# 2nd-Assesment

This smart contract, named MyToken, demonstrates a simple token system representing a savings account. It allows for basic operations such as minting new tokens to simulate deposits and burning tokens to simulate withdrawals. The contract includes functionality to keep track of the total supply of tokens and individual balances of users

Public Variables:

name: The name of the token ("SavingAccount").
symbol: The abbreviation of the token ("SA").
totalSupply: The total number of tokens in circulation.

Mappings:

balances: A mapping from addresses to their respective token balances.


Functions:

mint(address _to, uint amount): Increases the total supply and the balance of the specified address.
burn(address from, uint amount): Decreases the total supply and the balance of the specified address, with a check to ensure sufficient balance.
