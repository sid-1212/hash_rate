// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// 21420 gas
contract constants{
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}
// 23553 gas
contract notconstant{
        address public MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}