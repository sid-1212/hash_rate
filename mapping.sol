//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract mappinginsol{
    mapping (address => uint) public balances; //simple
    mapping (address => mapping (address => bool)) public isconnected;

    function examples() external{
        balances[msg.sender] = 123;
        uint b1 = balances[msg.sender];
        uint b2 = balances[address(1)];
    
        balances[msg.sender]+=111;
        delete balances[msg.sender];

        isconnected[msg.sender][address(this)] = true;

    }
}