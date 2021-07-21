// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

import "./library/Xrc20Token.sol";

contract PeerSave is Xrc20Token {
    constructor()
        Xrc20Token(0xC44775DA5d008e019527106C75caa0488DcD5E7d, "PeerSave", "SAN", 18, 10000000000, "", "")
    {
    }
}