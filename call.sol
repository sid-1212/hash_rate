// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Receiver {
    //create an event to log the transaction
    uint public x;
    string public message;
    event Received(address caller, uint amount, string message);

    //create a fallback function so as when we call a function 
    //that does not exist, fallback function is called
    fallback() external payable {
        //emit/print the message when fallback is called
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    //function foo takes string input, uint input and ether 
    //and returns the value of x incremented by 1
    function foo(string memory _message, uint _x) payable external returns (uint) {
        emit Received(msg.sender, msg.value, _message);
        message = _message;
        x = _x;
        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's imagine that contract B does not have the source code for
    // contract A, but we do know the address of A and the function to call.
    function testCallFoo(address payable _addr) public payable {
        // You can send ether and specify a custom gas amount
        (bool success, bytes memory data) = _addr.call{value: 123, gas: 5000}(
            //since 5000 gas is not enough to call the function foo, this transaction will fail
            abi.encodeWithSignature("foo(string,uint256)", "call foo", 123)
        );

        emit Response(success, data);
    }

    // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address _addr) public {
        (bool success, bytes memory data) = _addr.call(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
}
