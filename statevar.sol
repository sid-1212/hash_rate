// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract stateandlocal{
    uint public i;//state var
    bool public b;//false
    address public myadd;//0x00...40 zeros

    function fun() external{
        uint x = 123;//local
        bool f = false;

        x+=456;
        f = true;

        i = 123;
        b = true;
        myadd = address(1);
    }
}