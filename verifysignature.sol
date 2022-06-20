//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract VerifySig{
    function verify(address _signer, string memory _message, bytes memory _signature) 
    external pure returns (bool){
        bytes32 messeageHash = getMessageHash
    }
}