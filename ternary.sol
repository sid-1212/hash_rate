//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ternary{
    function ternaryop(uint a) external pure returns(uint){
        return a>10?1:0;
    }
}