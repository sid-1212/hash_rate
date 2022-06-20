//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//definition of the contract to be produced
contract Account{
    //bank to store the Smart Contract address of the AccountFactory contract
    address public bank;
    //owner to store the address of the user's wallet
    address public owner;

    //constructor of the contract takes address of the owner as input
    constructor(address _owner) payable{
        //assign owner the SC address of AccountFactory
        owner = _owner;
        //assign bank the caller address
        bank = msg.sender;
    }
}

//contract that creates new Account contracts
contract AccountFactory{
    //array to store the created Account contracts
    Account[] public accounts;

    //function to create Account contract
    function createAccount(address _owner) external payable{
        //creating the contract
        Account account = new Account{value: 100}(_owner);
        //storing the contract in the array
        accounts.push(account);
    }
}