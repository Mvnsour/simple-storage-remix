// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageContractList;

    function createSimpleStorageContract() public {
      // Create a new instance of the SimpleStorage contract
      SimpleStorage newSimpleStorageContract = new SimpleStorage();
      // Add new contract to the list
      simpleStorageContractList.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIdx, uint256 _newSimpleStorageNum) public {     //sfStore means StorageFactoryStore //SimpleStorage store function will be called here
      //SimpleStorage store function will be called here
      // Address
      // ABI (Application Binary Interface) will tell our code exactly how he can interact with another contract
      SimpleStorage mySimpleStorage = simpleStorageContractList[_simpleStorageIdx];
      mySimpleStorage.store(_newSimpleStorageNum);
    }

    function sfGet(uint256 _simpleStorageIdx) public view returns (uint256) {
      SimpleStorage mySimpleStorage = simpleStorageContractList[_simpleStorageIdx];
      return mySimpleStorage.retrieve();
    }
}