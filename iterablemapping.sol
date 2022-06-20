//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract iterablemap{
    //create a mapping for storing balances corresponding to any address
    mapping(address=>uint) public balances;
    //create a mapping to check if an address has been logged
    mapping(address=>bool) public inserted;
    //create an array to make a list of all addresses
    address[] public keys;

    //function to set the balance for a given address 
    function set(address _key, uint _bal) external{
        balances[_key] = _bal;

        //if the address has not been logged, add it to the list
        if(!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    //function to get the size of the list
    function getSize() external view returns(uint){
        return keys.length;
    }

    //function to get the first address in the list
    function first() external view returns(uint){
        return balances[keys[0]];
    }

    //function to get the last address in the list
    function last() external view returns(uint){
        return balances[keys[keys.length-1]];
    }

    //function to get ith address in the list(0-based serial)
    function getith(uint _i) external view returns(uint){
        return balances[keys[_i]];
    }

}