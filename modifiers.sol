//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier{
    bool public paused;
    uint public count;

    function setPause(bool _paused) external{
        paused = _paused;
    }

    modifier whenNotPaused(){
        require(!paused,"paused");
        _;
    }

    function inc() external whenNotPaused{
        count+=1;
    }

    function dec() external whenNotPaused{
        count-=1;
    }

    modifier cap(uint x){
        require(x<100,"x>=100");
        _;
    }

    function incbyx(uint x) external whenNotPaused cap(x){
        count+=x;
    }

    modifier sandwich(){
        count+=10;
        _;
        count*=2;
    }

    function foo() external sandwich{
        count+=1;
    }

}