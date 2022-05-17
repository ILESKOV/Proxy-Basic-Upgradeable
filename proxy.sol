pragma solidity ^0.8.13;

import "./Storage.sol";

contract ProxyDog is Storage{
    address public currentAddress;

    constructor(address _currentAddress) public{
        currentAddress = _currentAddress;
    }

    function upgrade(address _currentAddress) public{
        currentAddress = _currentAddress;
    }

    function getNumberOfDogs()public returns(bool, bytes memory){
        (bool res,bytes memory data) = currentAddress.delegatecall(abi.encodePacked(bytes4(keccak256("getNumberOfDogs()"))));
        return (res, data);
    }

    function setNumberOfDogs(uint _number)public returns(bool, bytes memory){
        (bool res,bytes memory data) = currentAddress.delegatecall(abi.encodePacked(bytes4(keccak256("setNumberOfDogs(uint)")),_number));
        return (res, data);
    }
}
