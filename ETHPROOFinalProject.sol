// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public name = "MyToken";
    string public symbol = "MTK";
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    function mint(address _from, uint256 _amount) public {
        require(_from != address(0), "Invalid address");

        totalSupply += _amount;
        balances[_from] += _amount;
    }

    function burn(address _from, uint256 _amount) public {
        require(_from != address(0), "Invalid address");
        require(balances[_from] >= _amount, "Insufficient balance");

        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
