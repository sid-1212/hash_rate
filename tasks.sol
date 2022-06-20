//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

contract todolist{
    struct Todo{
        string task;
        bool status;
    }

    Todo[] public todos;

    function createtask(string calldata _task) external{
        todos.push(Todo({
            task: _task,
            status: false
        }));
    }

    function updatetask(uint _idx, string calldata _text) external{
        todos[_idx].task = _text;
    }

    function get(uint _idx) external view returns (string memory, bool){
        Todo memory todo = todos[_idx];
        return (todo.task, todo.status);
    }

    function toggle(uint _idx) external {
        todos[_idx].status = !todos[_idx].status;
    }


}