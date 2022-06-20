//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract Iterable{
    mapping(address=>uint) public balances;
    mapping(address=>bool) public inserted;
    address[] public keys;

    function set(address _key, uint _bal) external {
        balances[_key] = _bal;

        if(!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getsize() external view returns(uint){
        return keys.length;
    }

    function getith(uint _i) external view returns(uint){
        return balances[keys[_i]];
    }
}