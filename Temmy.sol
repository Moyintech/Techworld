//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract RecieveEther{
    receive()external payable{}
    function getbalance()public view returns(uint){//NB Payable is not added because we are only reading, we are neither sending nor recieving money.
        return address(this).balance;
    }
}
contract Micheal{
    //E

function sendviaTransfer(address payable _to)public payable{
_to.transfer(msg.value);
}

function sendViaSend(address payable _to) public payable {
bool send =_to.send(msg.value);//send returns bool expression
require(send, "Failed to send ether");
}

function sendviacall(address payable _to)public payable{
(bool sent, bytes memory data)= _to.call{value:msg.value}("");
require(sent, "Failed to send ether");
}

}