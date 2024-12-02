// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Mahasiswa {
    struct Person {
        uint256 nim;
        string name;
        string jurusan;
    }

    Person[] public List;

    mapping(string => uint256) public nameNim;

    function add(
        string memory _name,
        uint256 _nim,
        string memory _jurusan
    ) public {
        List.push(Person(_nim, _name, _jurusan));
        nameNim[_name] = _nim;
    }
}
