# Menthol Protocol solidity developer interview task

Thank you for your interest in working with our team!

This project will be used to evaluate potential [Menthol Protocol](https://www.mentholprotocol.com/) developers.
To participate please fork this repository and open a pull request completing the requested tasks. 

All work should be your own. Do not plagiarize from any other submissions. We anticipate this sample to be a one or two day task.

## Goal

The primary goal of this work sample is to complete the incomplete smart contract resolver, implement any improvements you believe are necessary, integrate it with [Gelato Network](https://www.gelato.network/about) by writing a smart contract resolver for Gelato and deploy to a testnet. Another very important goal of this work sample is to test your ability to effectively communicate technical details about your work via documentation and a final demonstration of your solution.

## Reading

Please take some time to familiarize yourself with the provided smart contract. Once you have done so, fill in the missing NatSpec comments. Then, provide a brief written explanation or summary of what the provided smart contract does, how it may be used and how it may be improved and/or extended.

## Testing

Menthol Protocol uses [Hardhat](https://hardhat.org/) as its Ethereum development environment of choice. Our preferred library for interacting with smart contracts is [Ethers](https://docs.ethers.io/v5/). Please download and configure Hardhat. Then, using Ethers and [Mocha](https://mochajs.org/), write appropriate test cases for evaluating the provided smart contract. Feel free to use any existing [OpenZeppelin](https://openzeppelin.com/contracts/) contracts, custom mock contracts, or helper utility functions that you need. We are looking for a robust set of unit tests.

## Improving

Once you've evaluated the provided smart contract, please implement any fixes or improvements you can think of. Try not to alter the fundamental contract too radically; we are trying to evaluate you on your ability to work iteratively with the sample that has been given to you. Make sure to write unit tests to validate that the contract still behaves correctly given any edits that you make.

If you choose to make no edits to the smart contract, please provide a written explanation of why you believe the existing smart contract requires no improvements.

## Deploying

Please deploy the provided smart contract to a Gelato-supported test network such as Matic using a deployment script in Hardhat. Use [this Hardhat plugin](https://hardhat.org/plugins/nomiclabs-hardhat-etherscan.html) to verify the contract code on the test network. In your final pull request include the smart contract address, test network, and an [Etherscan](https://etherscan.io/) link to the deployed contract.

## Setting up Gelato Tasks

Now that you have deployed both Cooler.sol and CoolerResolver.sol on to a testnet supported by Gelato Network. You now need to set up an automated task. [Follow the steps in the following guide to complete this step](https://docs.gelato.network/guides/tutorial/written-tutorial).


## For bonus points: Interfacing

Menthol Protocol has chosen to use [Vue3](https://v3.vuejs.org/) for building all of its frontend interfaces. Please create a Vue3 application to interface with your deployed smart contract using Ethers. You may assume that the user visiting your application has installed and unlocked their wallet via [MetaMask](https://metamask.io/). In your final pull request, include specific instructions with all details necessary for running and testing your application. Bonus points if you also host your application live somewhere.

## Wrapping Up

In your pull request, please include any supplementary documentation, diagrams, or media which might better demonstrate or explain your final product. Once you have opened your pull request, notify our team and we will arrange a time to have you walk us through your solution.

