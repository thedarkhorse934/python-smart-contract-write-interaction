// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CounterV2 {
    uint256 private count;

    event CountIncremented(uint256 newCount, address indexed caller);

    function getCount() external view returns (uint256) {
        return count;
    }

    function increment() external {
        count += 1;
        emit CountIncremented(count, msg.sender);
    }
}
