// SPDX-License-Identifier: MIT
pragma solidity 0.8.26; //versi solidity

//ini mirip class di js
contract simpleStorage {
    // basic type data boolean, uint, int, address, bytes

    bool hasFavoriteNumber = true;
    uint256 FavotitNumber = 80;  // uint == uint256
    int256 Farvorite = -10;
    string FavorInText = "123 // SatuDuaTiga";
    address myAddress = 0xf47a8fa27621BE0e117aBA58f77269810ac42555;
    bytes32 far = "cat"; //untuk generate ke hex

}