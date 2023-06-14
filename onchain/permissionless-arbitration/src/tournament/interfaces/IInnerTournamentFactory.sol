// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9;

import "../../Machine.sol";
import "../../Tree.sol";
import "../../Time.sol";

import "../abstracts/NonRootTournament.sol";

interface IInnerTournamentFactory {
    function instantiateInner(
        Machine.Hash _initialHash,
        Tree.Node _contestedCommitmentOne,
        Machine.Hash _contestedFinalStateOne,
        Tree.Node _contestedCommitmentTwo,
        Machine.Hash _contestedFinalStateTwo,
        Time.Duration _allowance,
        uint256 _startCycle,
        uint64 _level
    ) external returns (NonRootTournament);
}
