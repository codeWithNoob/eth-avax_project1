pragma solidity ^0.8.17;

contract Contract {
    uint256 public value;
    
    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than 0"); // Check that the value is greater than 0
        value = _value;
    }
    
    function doubleValue() public {
        uint256 newValue = value * 2;
        assert(newValue > value); // Check that the new value is greater than the old value
        value = newValue;
    }
    
    function resetValue() public {
        value = 0;
        revert("Value has been reset"); // Revert with a message
    }
}
