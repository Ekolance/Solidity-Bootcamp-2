// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Token{
    string public name;
    string public symbol;
    uint128 public decimal;
    uint256 public totalSupply;
    mapping(address=>uint) public balance;

    constructor(string memory _name, string memory _symbol, uint128 _decimal, uint _totalSupply){
        name = _name;
        symbol = _symbol;
        decimal = _decimal;
        totalSupply = _totalSupply;
        balance[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint _amount) external payable returns(bool success ){
      require(balance[msg.sender]>=(_amount));
        balance[msg.sender] = balance[msg.sender] - (_amount);
        balance[_to] = balance[_to] + (_amount);
        return true;
    }



}