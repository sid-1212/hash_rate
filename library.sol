//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

library ArrayLib{
    function find(uint[] storage arr, uint x) internal view returns(uint){
        for(uint i=0;i<arr.length;i++){
            if(arr[i]==x){
                return i;
            }
        }
        revert("number not found");
    }
}

contract Array{
    using ArrayLib for uint[];
    uint[] public arr = [1,2,3,4,5];

    function CheckforX(uint _x) external view returns(uint i){
        return arr.find(_x);
    }
}