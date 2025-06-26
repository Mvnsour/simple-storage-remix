// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0; // use versions between 0.8.19 and 0.9.0 (excluded)

    // Basic Types: boolean, uint, int, address, bytes
    /* bool understood = true;
    uint favoriteNum = 7; // it's uint256 by deafault but we can be more explicit by writting uint256, always positive
    int negativeTemp = -1; // it's int256 by deafault but we can be more explicit by writting int256, can also be negative
    string favoriteDessert = "fondant"; 
    address fakeAddress = 0xb5A3C30105cC2cAdce411bcb49679d7775bcb2fE;
    bytes32 favBytes = "cat"; */

 contract SimpleStorage {
    uint256  myFavNum; // default value = 0

    // uint256[] favNumList;
    struct Person {
        uint256 favNum;
        string name;
    }

    // The 'Person public mouss = Person({favNum: 7, name: "Mouss"});' solution is good 
    //but too long to add person each time

    // dynamic array bc it cans grow and shrink
    Person[] public listofPeople; // [] empty by default


    // Malik -> 89, the string is the key of each numb and the default value is 0
    mapping(string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public {
        myFavNum = _favNum;
    }

    // 2 types of view : view (for reading or state view) or pure (for calculations without reading or modifying state)
    function retrieve() public view returns(uint256) {
        return myFavNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        listofPeople.push( Person(_favNum, _name) );
        nameToFavNum[_name] = _favNum;
    }

}