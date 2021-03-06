pragma solidity ^0.8.13;

import "./Storage.sol";

contract Dogs is Storage{
    function getNumberOfDogs() public view returns(uint){
        return Storage.getNumber();
    }  
    function setNumberOfDogs(uint toSet) public {
        return Storage.setNumber(toSet + 1);
    }  
}
