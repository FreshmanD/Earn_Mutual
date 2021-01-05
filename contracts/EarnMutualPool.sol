// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;


/**
 * @author dexter
 * @title Earn Mutual Liquidity Pool
 * @notice Accumulates liquidity in DAI from LPs and distributes P&L in DAI
 */
contract EarnMutualERCPool is
    IERCLiquidityPool,
    Ownable,
    ERC20("Earn Mutual DAI LP Token", "emDai")
{
    using SafeMath for uint256;

    IERC20 public override token;

    constructor(IERC20 _token) public {
        token = _token;
    }

}
