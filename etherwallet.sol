//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract etherwallet{

    //declare a payable state variable address
    address payable public owner;

    //assign user's address to owner
    constructor(){
        owner = payable(msg.sender);
    }

    //make the smart contract able to receive ether
    receive() external payable{}

    //function to withdraw from the contract
    function withdraw(uint _amount) external{
        //check if the user is owner of the contract or not
        require(msg.sender==owner, "unauthorised");
        //transfer the amount enterred by the user
        payable(msg.sender).transfer(_amount);
    }

    //function to get balance
    function getBalance() external view returns (uint){
        return address(this).balance;
    }
}