//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor{
    address public owner;
    uint public x;

    constructor(uint a){
        owner = msg.sender;
        x = a;
    }
}