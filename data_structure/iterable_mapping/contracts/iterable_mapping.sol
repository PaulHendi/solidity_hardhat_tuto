// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _addr, uint _bal) external {
        balances[_addr] = _bal;

        if (!inserted[_addr]) {
            inserted[_addr] = true;
            keys.push(_addr);
        }
    }

    function get(uint _index) external view returns (uint) {
        address key = keys[_index];
        return balances[key];
    }

    function first() external view returns (uint) {
        // Write your code here
        address key = keys[0];
        return balances[key];
    }

    function last() external view returns (uint) {
        // Write your code here
        uint size = keys.length;
        address key = keys[size-1];
        return balances[key];
    }
}
