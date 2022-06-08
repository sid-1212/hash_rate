//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ifelse{
    function ifelseinsol(uint a) external pure returns(uint){
        if(a<10){
            return 0;
        }
        else{
            return 1;
        }
    }
}