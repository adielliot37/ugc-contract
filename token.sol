// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract UGCFuN is ERC20, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("UGCFuN", "UGC")
        ERC20Permit("UGCFuN")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}