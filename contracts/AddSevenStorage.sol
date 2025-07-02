// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { SimpleStorage } from "./SimpleStorage.sol";


// inheritance with 'is' after importing de contract
contract AddSevenStorage is SimpleStorage {
    // +7
    // overrides
    // overide virtual
    function store (uint256 _newNum) public override  {
        myFavNum = _newNum + 7;
    }
}