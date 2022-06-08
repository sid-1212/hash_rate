//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract forandwhile{
    function forfor(uint a) external pure returns(uint){
        uint sum = 0;
        for(uint i=1;i<=a;i++){
            if(i==4){
                continue;
            }
            sum+=i;
        }
        return sum;
    }

    function forwhile(uint b) external pure returns(uint){
        uint sum = 0;
        uint i = 1;
        while(i<=b){
            if(i==7){
                break;
            }
            sum+=1;
        }
        return sum;
    }
}