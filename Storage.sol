pragma solidity ^0.8.13;

contract Storage{
    uint number;

    function getNumber() internal view returns(uint){
        return number;
    }

    function setNumber(uint _number)internal{
        number = _number;
    }
   
}
