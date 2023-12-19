pragma solidity ^0.8.0;

contract InefficientSmartContract {
    uint256 public value;

    function setValue(uint256 _newValue) public {
        for (uint256 i = 0; i < 1000000; i++) {
            value = _newValue + i;
        }
    }

    function getValue() public view returns (uint256) {
        uint256 result = 0;
        for (uint256 i = 0; i < 100000; i++) {
            result += value * i;
        }
        return result;
    }

    function sortArray(uint256[] memory arr) public pure returns (uint256[] memory) {
        for (uint256 i = 0; i < arr.length; i++) {
            for (uint256 j = 0; j < arr.length - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // Swap elements if they are in the wrong order
                    uint256 temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
        return arr;
    }
}
