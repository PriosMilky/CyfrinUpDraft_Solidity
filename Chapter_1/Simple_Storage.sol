// SPDX-License-Identifier: MIT
pragma solidity 0.8.26; //versi solidity

//ini mirip class di js
// contract simpleStorage {
//     // basic type data boolean, uint, int, address, bytes

//     bool hashFavoriteNumber = true;
//     uint256 Favotite; //jika tidak di inisiasi akan menjadi 0
//     uint256 FavotiteNumber = 80;  // uint == uint256
//     int256 Farvorite = -10;
//     string FavoriteInText = "123 // SatuDuaTiga";
//     address myAddress = 0xf47a8fa27621BE0e117aBA58f77269810ac42555;
//     bytes32 farByte32 = "cat"; //untuk generate ke hex

// }


// penjelasan tentang knp jika di compile warnya beda
//  oren =  jika ini adalah untuk mengubah atau menginputkan sesuatu yabg nanti nya bisa dibaca coleh view atau pre
//  biru = liat di view ada juga ynag pure itu adalah untuk membaca statusnya
// jika pake view itu tidak boleh menanbahkan lagi


contract simpleStorage {
        uint256 favorite; // 0 isi nya

        // array -> selalu mulai dari 0
        // uint256[] list; 

        struct Person{
            uint256 farvoriteNumber;
            string name;
        }

        Person[] public List;

        // untuk mencari sesuatu agar tidak susah
        mapping(string => uint256) public nameFarNumber;

        // versi panjang dari array
        // Person public pat = Person({ farvoriteNumber: 7, name: "Pat"});
        // Person public prios = Person({ farvoriteNumber: 3, name: "Prios"});
        // Person public milky = Person({ farvoriteNumber: 1, name: "Milky"});
        // Person public yuki = Person({ farvoriteNumber: 10, name: "Yuki"}); 


        function store(uint256 _favorite) public {
            favorite = _favorite;
            retrive();
        }
        
        function retrive() public view returns(uint256){
            // contoh view yg tidak boleh
            // favorite = _favorite +5;
            return favorite;
        }
        
        function add(string memory _name, uint256 _farvoriteNumber) public {
            List.push(Person(_farvoriteNumber, _name));
            nameFarNumber[_name] = _farvoriteNumber;
        }


}