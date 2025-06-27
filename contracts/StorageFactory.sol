// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256  myFavNum;

    struct Person {
        uint256 favNum;
        string name;
    }

    Person[] public listofPeople; 


    mapping(string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public {
        myFavNum = _favNum;
    }

    function retrieve() public view returns(uint256) {
        return myFavNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        listofPeople.push( Person(_favNum, _name) );
        nameToFavNum[_name] = _favNum;
    }

}

contract StorageFactory {

    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}