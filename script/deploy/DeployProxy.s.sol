// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

import { IPRBProxy } from "../../src/interfaces/IPRBProxy.sol";
import { IPRBProxyRegistry } from "../../src/interfaces/IPRBProxyRegistry.sol";
import { PRBProxyHelpers } from "../../src/PRBProxyHelpers.sol";

import { BaseScript } from "../shared/Base.s.sol";

/// @notice Deploys an instance of {PRBProxy} via the registry. The owner of the proxy will be `deployer`.
contract DeployProxy is BaseScript {
    function run(IPRBProxyRegistry registry) public virtual broadcaster returns (IPRBProxy proxy) {
        proxy = registry.deploy();
    }
}
