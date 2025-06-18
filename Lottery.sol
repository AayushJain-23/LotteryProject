// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery{

    address public manager;    //this will store manager's address 
    address payable[] public participants;  //"array" type because there will be multiple addresses(participants) to the array 

        constructor()
        {
            manager=msg.sender; // "msg.sender" is a global variabler and  will store the address of the person who is deploying the contract and than the person will be "manager".
            // our manager will deploy these contract "Lottery". Manager will be having all the rights to deploy these contract and we will code these in constructor.    
        } 
    

        receive() external payable
        {
                // "receive" is a special function can be used only once in our contract, should be 'external' and 'payable', no arguments can be passed. 
                // this will always execute when we receive ether as payment and will "address" of the person who is sending ether for lottery participation. This function does not return anything so we do not need to put "return" keyword
            require(msg.value==2 ether);
            participants.push(payable(msg.sender));
                //this will be PUSH the addresses of ether senders to the "participants" dynamic array.
        }

    
    
    
    
    
    
    
    
    
    
    
    function getBalance() public view returns(uint)
    {
        require(msg.sender== manager);
        return address(this).balance;
    }

}
