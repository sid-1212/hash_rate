//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract enumexamples{
    //a special type that enables for a variable to be
    //a set of predefined constants
    enum Status{
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }
    //can declare a state variable of created enum type
    Status public status;

    //function to get the value of the variable
    function get() external view returns(Status){
        return status;
    }

    //function to set the value of the variable
    function set(Status _status) external{
        status = _status;
    }

    //function to set to a specific constant
    function Ship() external{
        status = Status.Shipped;
    }

    //function to reset the variable to default constant
    function reset() external{
        delete status;
    }
}