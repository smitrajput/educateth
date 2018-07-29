pragma solidity ^0.4.17;

contract Adoption {
    address[16] public adopters;

    function adopt(uint petId) public returns(uint) {
        require(petId >= 0 && petId <= 15);
        address[petId] = msg.sender;
        return petId;
    }

    function getAdopters() view returns(address[16]) {
        return adopters;
    }
}
