pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";
import {Delegator} from "contracts/Delegator.sol";
import {BlockManager} from "contracts/Core/BlockManager.sol";
import {CollectionManager} from "contracts/Core/CollectionManager.sol";
import {RewardManager} from "contracts/Core/RewardManager.sol";
import {StakeManager} from "contracts/Core/StakeManager.sol";
import {StateManager} from "contracts/Core/StateManager.sol";
import {VoteManager} from "contracts/Core/VoteManager.sol";
import {Governance} from "contracts/Core/parameters/Governance.sol";
import {RandomNoManager} from "contracts/randomNumber/RandomNoManager.sol";
import {RAZOR} from "contracts/tokenization/RAZOR.sol";
import {StakedTokenFactory} from "contracts/tokenization/StakedTokenFactory.sol";

contract DelegatorScript is Script, Test {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Governance governance = new Governance();
        BlockManager blockManager = new BlockManager();
        address gov = address(governance);
        governance.grantRole("ADMIN", address(blockManager));
        console.log(gov);
        // new CollectionManager();
        // new StakeManager();
        // new RewardManager();
        // new VoteManager();
        // new Delegator();
        // new RAZOR(10000e18);
        // new StakedTokenFactory();
        // new RandomNoManager();

        //grantRoles
        vm.stopBroadcast();
    }
}
