// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.2
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import './IERC721ASoulboundUpgradeable.sol';
import './ERC721ABurnableUpgradeable.sol';
import '../ERC721A__Initializable.sol';

/**
 * @title ERC721ASoulbound.
 *
 * @dev ERC721A token that is non-transferable.
 */
abstract contract ERC721ASoulboundUpgradeable is
    ERC721A__Initializable,
    ERC721ABurnableUpgradeable,
    IERC721ASoulboundUpgradeable
{
    function __ERC721ASoulbound_init() internal onlyInitializingERC721A {
        __ERC721ABurnable_init_unchained();
        __ERC721ASoulbound_init_unchained();
    }

    function __ERC721ASoulbound_init_unchained() internal onlyInitializingERC721A {}

    /**
     * @dev Overrides _beforeTokenTransfers to make token non-transferable. The token is till mintable, and burnable.
     *
     * Requirements:
     *
     * - The caller must own `tokenId` or be an approved operator.
     */
    function _beforeTokenTransfers(
        address from,
        address to,
        uint256 startTokenId,
        uint256 quantity
    ) internal virtual override {
        if (from != address(0))
            if (to != address(0)) revert SoulboundTokenCannotBeTransferred();
    }
}
