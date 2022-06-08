//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorTypes{
    function testRequire(uint i) public pure{
        require(i<=10,"i>10");
    }
    function testRevert(uint i) public pure{
        if(i>10){
            revert("i>10");
        }
    }
    uint public num = 123;
    function testAssert() public view{
        assert(num==123);
    }
    function foo() public{
        num+=1;
    }
    error MyError(address caller,uint i);
    function testCustomError(uint i) public view{
        if(i>10){
            revert MyError(msg.sender, i);
        }
    }

}