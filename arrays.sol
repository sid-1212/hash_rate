//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract arrays {
    uint[] public nums = [1,2,3,4];
    uint[3] public arr = [1,2,3];

    function examples() external {
        nums.push(5);
        uint _x = nums[2];
        delete nums[2];
        nums.pop();
        uint _len = nums.length; 
        uint _y = arr[0];

        uint[] memory a = new uint[](5);
    }

    function returnarray() external view returns(uint[] memory){
        return nums;
    }

}