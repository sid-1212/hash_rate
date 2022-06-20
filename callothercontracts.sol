//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract CallTestContract{

    //function to set value of x in smart contract TestContract
    function SetX(TestContract _test, uint _x) external{
        _test.SetX(_x);
    }

    //function to get the value of x from TestConract
    function GetX(address _test) external view returns (uint x){
        x = TestContract(_test).GetX();
    }

    //function to send ether to the TestContract function SetXandReceiveEther and set value of x
    function SetXandSendEther(address _test, uint _x) external payable{
        TestContract(_test).SetXandReceiveEther{value: msg.value}(_x);
    }

    //function to read and return the value of x and value from TestContract
    function GetXandValue(address _test) external view returns(uint x, uint value){
        (x, value) = TestContract(_test).GetXandValue();
    }
}

contract TestContract{
    uint public x;
    uint public value = 123;

    //function to set state variable x to a given value
    function SetX(uint _x) external{
        x = _x;
    }

    //function to get the value of state variable x
    function GetX() external view returns (uint){
        return x;
    }

    //function to set value of x and value of value
    function SetXandReceiveEther(uint _x) external payable{
        x = _x;
        value = msg.value;
    }

    //function to return value of x and value
    function GetXandValue() external view returns (uint, uint){
        return (x, value);
    }
}