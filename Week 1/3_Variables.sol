// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


/*
There are 3 types of variables in Solidity

   - local
  declared inside a function and not stored on the blockchain


   -  state

  declared outside a function and stored on the blockchain
   

   - global 
   
   (provides information about the blockchain)
*/

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }

    //Assigment 

}



contract Constants {

    /*
      Constants are variables that cannot be modified.
      Their value is hard coded and using constants can save gas cost.
      coding convention to uppercase constant variables
    */

    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}



contract Immutable {

      /*
     Immutable variables are like constants. 
     Values of immutable variables can be set inside the constructor but cannot be modified 
      afterwards.
      coding convention to uppercase immutable variables
    */

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}

//Reading and writing to a state variable

contract SimpleStorage {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}


