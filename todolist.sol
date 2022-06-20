//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ToDoList{
    struct Item{
        string task;
        bool status;
    }

    Item[] public todos;

    function create(string calldata _task) external{
        todos.push(Item({task: _task, status: false}));
    }

    function edittask(uint _idx, string calldata _task) external{
        todos[_idx].task = _task;
    }

    function get(uint _idx) external view returns (string memory, bool){
        Item memory todo = todos[_idx];
        return(todo.task, todo.status);
    }

    function togglestatus(uint _idx) external{
        todos[_idx].status = !todos[_idx].status;
    }

}