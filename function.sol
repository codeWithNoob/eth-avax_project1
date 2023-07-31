// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
 
        require(_newValue > 0, "Value must be greater than 0");
        
        
        assert(_newValue <= 100);

        if (_newValue > 1000) {
            revert("Value cannot exceed 1000");
        }

        value = _newValue;
    }
}
