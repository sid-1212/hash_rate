//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract globalvariables{

    function globalvar() external view returns(address,uint,uint){
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint bnum = block.number;

        return (sender, timestamp, bnum);
    }
}