//SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

/* 

You just land your new blockchain job to build smart contracts for an awesome DAO catching fire!

Immediately, your boss throws at your a scrip of code tons of bugs in it. She says, 

'Hey you! Fix this code and get this smart contract running and help save our DApp from crashing!'

The clock is ticking and this is the perfect opportunity to prove your skills and show what you are made of.

Your assignment is to fix the code below full of syntax errors and get this contract successfully deployed on 
the Ethereum network. 

Good luck! 

*/

 contract learnFunctions{
    
   
   function remoteControlOpen(bool closedDoor, bool openDoor ) public returns(bool){} 
   uint  a= 45;
    
    function addValues() public view returns (uint) {
       uint b = 3;
       uint result = a + b;
       return result;
   }
   
   
   function addNewValues() public view returns (uint) {
    uint b = 5;
    uint result = a + b;
    return result;
   }
   
  uint c = 4; 
   
    function multiplyCalculatorByFour(uint c) public view returns (uint) {
        uint result = a * c;
        return result;
   }
    
        function divideCalculatorByFour(uint c) public view returns (uint) {
        uint  result = a / c;
        return result;
    }
   
   }