// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.2
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import './IERC721ABurnableUpgradeable.sol';

/**
 * @dev Interface of ERC721ASoulbound.
 */
interface IERC721ASoulboundUpgradeable is IERC721ABurnableUpgradeable {
    /**
     * A Soulbound token cannot be transferred.
     */
    error SoulboundTokenCannotBeTransferred();
}
