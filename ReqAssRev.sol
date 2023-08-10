// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ReqAssRev {
    int256 public value;

    function requireFunction(int256 _newValue) external {
        // Using require() to validate inputs
        require(_newValue > 0, "Value must be greater than 0");
        value = _newValue;
    }

    function assertFunction(uint256 _a, uint256 _b) external pure returns (uint256) {
        // Using assert() for internal consistency checks
        assert(_a != _b);
        return _a + _b;
    }

    function revertFunction(uint256 _x) external pure returns (uint256) {
        if (_x == 42) {
            // Using revert() to explicitly trigger a revert
            revert("The value cannot be 42");
        }
        return _x * 2;
    }
}
