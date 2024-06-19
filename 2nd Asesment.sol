// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

/*
    REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {
    // Public variables to store the details about the coin
    string public name = "SavingAccount";
    string public symbol = "SA";
    uint public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Mint function to increase the total supply and balance of the specified address
    function mint(address _to, uint amount) public {
        totalSupply += amount;
        balances[_to] += amount;
    }

    // Burn function to decrease the total supply and balance of the specified address
    function burn(address from, uint amount) public {
        require(balances[from] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balances[from] -= amount;
    }
}
