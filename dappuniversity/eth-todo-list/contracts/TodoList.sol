// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.11;

contract TodoList {
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("Check out dappuniversity.com");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

}