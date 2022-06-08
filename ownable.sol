//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ownership{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier authentication(){
        require(msg.sender == owner, "Unauthorised!");
        _;
    }

    function setownership(address changeowner) external authentication{
        require(changeowner!=address(0),"Invalid Address!");
        owner = changeowner;
    }

    function onlyownercancall() external {
        //body
    }

    function anyonecancall() external {
        //body
    }
}