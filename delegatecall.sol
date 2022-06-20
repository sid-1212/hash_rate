//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//function being delegate called
contract TestDelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) external payable{
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

//function making the delegate call
contract DelegateCall{
    uint public num;
    address public sender;
    uint public value;

    function setVars(address _test,uint _num) external payable{
        //storing returned values in variables
        (bool success, bytes memory data) = _test.delegatecall(
            //encoding with the test contract
            abi.encodeWithSelector(TestDelegateCall.setVars.selector, _num)
        );
        require(success, "call unsuccessful!");
    }
}