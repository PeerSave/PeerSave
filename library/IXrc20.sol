// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

interface IXrc20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view  returns (string memory);

    function symbol() external view  returns (string memory);

    function decimals() external view  returns (uint8);

    function totalSupply() external view  returns (uint256);

    function balanceOf(address account) external view  returns (uint256);

    function transfer(address recipient, uint256 amount) external  returns (bool);

    function allowance(address owner, address spender) external view  returns (uint256);

    function approve(address spender, uint256 amount) external  returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external  returns (bool);

    function increaseAllowance(address spender, uint256 addedValue) external returns (bool);

    function decreaseAllowance(address spender, uint256 subtractedValue) external returns (bool);

    /* pause the contract */
    function pause()  external ;

    /* unpause the contract */
    function unpause()  external ;

    /* mint */
    function mint(address _to, uint256 _amount) external returns (bool);

    /* 停止挖矿 */
    function stopMint() external returns (bool);

    /* 恢复挖矿 */
    function resumeMint() external returns (bool);

    /* 焚烧指定用户的代币 */
    function burn(address _who, uint256 _value) external returns (bool);

    function frozenAccount(address addr) external;

    function unfrozenAccount(address addr) external;
}