pragma solidity ^ 0.6.3;

interface Token{

    function totalSupply() external view returns (uint256 supply);

    function balanceOf(address _owner) external view returns (uint256 balance);

    function allowance(address _owner, address _spender) external view returns (uint256 remaining);   

    function transfer(address _to, uint256 _value)external returns (bool didOpSucceed);

    function approve(address _spender, uint256 _value)external returns (bool didOpSucceed);   

    function transferFrom (address _from, address _to, uint256 _value)external returns (bool didOpSucceed);

    event Transfer(address indexed from, address indexed to, uint256 value);
    
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );

}