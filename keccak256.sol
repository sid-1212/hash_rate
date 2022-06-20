//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract HashFunctions{
    function kecckak256test(string memory _text, uint _num, address _addr) external pure returns(bytes32){
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }

    function encodetest(string memory text1, string memory text2) external pure returns(bytes memory){
        return abi.encode(text1, text2);
    }

    function encodePackedtest(string memory text1, string memory text2) external pure returns (bytes memory){
        return abi.encodePacked(text1, text2);
    }

    function collisioninkeccak256(string memory text1, string memory text2) external pure returns (bytes32){
        return keccak256(abi.encodePacked(text1, text2));
    }
}