
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {IResolver} from "./interfaces/IResolver.sol";
import {ICooler} from "./interfaces/ICooler.sol";


contract CoolerResolver is IResolver {
    
    // initialize any variables you need and write the constructor

    function checker()
        external
        view
        override
        returns (bool canExec, bytes memory execPayload)
    {
        // Get time in seconds since last execution

        // Check if 60 seconds have passed

        // Check if user/dApp account's balance is sufficient
        
        // Get user/dApp account's green status

        // This is for Gelato Executors to check whether they should execute this task
        // solhint-disable not-rely-on-time
        // canExec = 

        // Call the function you want to automate
        // execPayload = 
    }
}