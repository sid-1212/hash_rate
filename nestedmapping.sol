//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract nestedmapping{
    mapping(address=>mapping(address=>bool)) public isFriend;

    function settrue() external{
        isFriend[msg.sender][address(this)] = true;
    }
}