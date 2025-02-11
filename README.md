# LxBWS - Lab02

Support material for the Lisbon Blockchain Winter School (Lab 02)

## Description

Practice: implement your first smart contract (an ERC 20 token)

### Dependencies
* Hardhat (v2.22.18)
* Node (v18)

### Requirements
* Run a testing blockchain node, or set up a connection to a test blockchain.
* We suggest using hardhat:

```shell
npx hardhat node
```


### Let's start

* An ERC 20 token is a contract that implements the [IERC20 interface](./contracts/IERC20.sol)
* Use the template provided to create the LXBWS token with the following metadata:
```
Symbol: LXBWS
Name: Lisbon Blockchain Winter School Token
Decimals: 0
```

### Installing dependencies, compiling contracts and running tests

```shell
npm i
npx hardhat compile
npx hardhat test
```

### Implement the LXBWS contract
* Implement the contract until all tests pass

### Deploy your first Smart Contract

* Connect your local environment to Remix
* Open the LXBWS contract
* Select the Solidity compiler
* Compile the contract
* Click “Deploy and run transactions”
* Connect the environment to the running blockchain
* Deploy you first Smart Contract using Remix

## Authors

* [David R. Matos](https://github.com/davidmatos)
* [André Augusto](https://github.com/AndreAugusto11)
