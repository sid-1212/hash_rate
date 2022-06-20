//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract mappinginsol{
    mapping(address=>uint) public balances;

    function examples() external{
        balances[msg.sender] = 123;
        uint bal1 = balances[msg.sender];
        uint bal2 = balances[address(1)];

        balances[msg.sender] += 123;
    }

    function deletebal() external{
        delete balances[msg.sender];
    }
}