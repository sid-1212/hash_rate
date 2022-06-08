//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract functionop{
    function returnmultiple() public pure returns (uint, bool){
        return (1,false);
    }

    function named() public pure returns(uint a, bool tf){
        return (1,false);
    }

    function assigned() public pure returns (uint a, bool ft){
        a = 1;
        ft = false;
    }
}