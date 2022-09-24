//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract TodoList{

    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;
    
    //We insert todos task with create function
    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));

    }
    // update list with update function
    function update(uint _index, string calldata _text) external {
        todos[_index].text = _text;
    }
    //the get function read from array struct
    function get(uint _index) external view returns(string memory , bool){
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //We complete the task with the toogle function
    function toogleCompleted(uint _index) external{
        todos[_index].completed = !todos[_index].completed;
    }
}