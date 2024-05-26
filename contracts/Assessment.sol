// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Assessment {
    
    uint256 public balance;
    mapping(uint256=>uint256)public price;
    string[] public array;

    constructor(uint initBalance) payable {
        price[0]=2;
        price[1]=4;
        price[2]=6;
        balance = initBalance;
    }

    function getBalance() public view returns(uint256,string[] memory){
        return (balance,array);
    }

    function buyColor(uint256 id) public payable {
        balance-=price[id];
        if(id==0){
            array.push("Red");
        }
        if(id==1){
            array.push("Yellow");
        }
        if(id==2){
            array.push("Green");
        }
        
    }

        function sellColor(uint256 id) public {
        require(id >= 0 && id <= 2, "Invalid color ID");

        if (id == 0) {
            _removeColor("Red");
        } else if (id == 1) {
            _removeColor("Yellow");
        } else if (id == 2) {
            _removeColor("Green");
        }

        balance += price[id];
    }

    function _removeColor(string memory color) internal {
        uint256 length = array.length;
        for (uint256 i = 0; i < length; i++) {
            if (keccak256(bytes(array[i])) == keccak256(bytes(color))) {
                array[i] = array[length - 1];
                array.pop();
                break;
            }
        }
    }
}
