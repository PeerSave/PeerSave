// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

import "./BasicTokenLib.sol";

abstract contract Xrc20Token {
    BasicTokenLib.Xrc20Token private xrc20Token;
    using BasicTokenLib for BasicTokenLib.Xrc20Token;

    constructor(
        address _owner,
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialBalance,
        string memory _tokenURI,
        string memory _iconURI) {
        xrc20Token.initialize(_owner, _name, _symbol, _decimals, _initialBalance, _tokenURI, _iconURI);
    }

    receive() external virtual payable { } 

    fallback() external virtual payable {  }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return xrc20Token.name();
    }

    function symbol() public view virtual  returns (string memory) {
        return xrc20Token.symbol();
    }

    function decimals() public view virtual  returns (uint8) {
        return xrc20Token.decimals();
    }

    function totalSupply() public view virtual  returns (uint256) {
        return xrc20Token.totalSupply();
    }

    function owner() public view virtual returns (address)
    {
        return xrc20Token.owner();
    }

    function balanceOf(address account) public view virtual  returns (uint256) {
        return xrc20Token.balanceOf(account);
    }

    function burn(address _who, uint256 _value) public virtual returns (bool) 
    {
        return xrc20Token.burn(_who, _value);
    }

    function transfer(address recipient, uint256 amount) public virtual  returns (bool) {
        return xrc20Token.transfer(recipient, amount);
    }

    function allowance(address _owner, address spender) public view virtual  returns (uint256) {
        return xrc20Token.allowance(_owner, spender);
    }

    function approve(address spender, uint256 amount) public virtual  returns (bool) {
        return xrc20Token.approve(spender, amount);
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual  returns (bool) {
        return xrc20Token.transferFrom(sender, recipient, amount);
    }

    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        return xrc20Token.increaseAllowance(spender, addedValue);
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        return xrc20Token.decreaseAllowance(spender, subtractedValue);
    }

    function pause()  public virtual 
    {
        return xrc20Token.pause();
    }

    function unpause()  public virtual 
    {
        return xrc20Token.unpause();
    }

    function mint(address _to, uint256 _amount) public virtual returns (bool) 
    {  
        return xrc20Token.mint(_to, _amount);
    }

    function stopMint() public virtual returns (bool) {
        return xrc20Token.stopMint();
    }

    function resumeMint() public virtual returns (bool) {
        return xrc20Token.resumeMint();
    }


    function frozenAccount(address addr) public virtual 
    {
        return xrc20Token.frozenAccount(addr);
    }

    function unfrozenAccount(address addr) public virtual 
    {
        return xrc20Token.unfrozenAccount(addr);
    }
}